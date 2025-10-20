require 'json'
require 'fileutils'
require 'yaml'

# Path to the majstori.json file
data_file = '_data/majstori.json'
# Directory for the majstori collection
output_base_dir = '_majstori'

# Ensure the base output directory exists
FileUtils.mkdir_p(output_base_dir)

# Read the JSON data
data = JSON.parse(File.read(data_file))

# Iterate over each majstor entry
data.each do |majstor|
  # Skip invalid entries
  next unless majstor['ime'] && majstor['mesto'] && majstor['slug']

  def slugify(text)
    # SERBIAN LATIN → ASCII (š→s, č→c, ć→c, ž→z)
    text.downcase
        .gsub(/[šŠ]/u, 's')      # š → s
        .gsub(/[čČćĆ]/u, 'c')    # č,ć → c
        .gsub(/[žŽ]/u, 'z')      # ž → z
        .gsub(/[đĐ]/u, 'dj')     # đ → dj
        .gsub(/[^a-z0-9\s-]/i, '') # Remove other special chars
        .gsub(/\s+/, '-')        # Spaces → -
        .gsub(/-+/, '-')         # No duplicate -
        .gsub(/^-|-$/, '')       # No leading/trailing -
        .strip
  end

  # Handle kategorija as array or string
  kategorija = majstor['kategorija']
  kategorija_str = if kategorija.is_a?(Array)
                     kategorija.join(', ')
                   else
                     kategorija.to_s
                   end

  # NEW: Combine all opis_dugi fields into detaljan_opis
  opis_fields = ['opis_dugi', 'opis_dugi2', 'opis_dugi3', 'opis_dugi4', 'opis_dugi5']
  combined_opis = opis_fields.map { |field| majstor[field] }.compact.reject(&:empty?).join(' ')
  detaljan_opis = combined_opis.empty? ? 'Nema detaljan opis' : combined_opis

  # Prepare the front matter (KEEP ALL THIS - IT'S PERFECT!)
  front_matter = {
    'layout' => 'majstor_profil',
    'title' => "#{majstor['ime']} - #{kategorija_str} u #{majstor['mesto'].join(', ')}",
    'description' => "#{majstor['opis_kratak']} Pronađite #{majstor['ime']} za #{kategorija_str} usluge u #{majstor['mesto'].join(', ')}.",
    'ime' => majstor['ime'],
    'kategorija' => kategorija,  # Keep as array if it is one
    'mesto' => majstor['mesto'].join(', '),
    'kontakt_telefon' => majstor['telefon'] || 'Nema dostupan kontakt',
    'email' => majstor['email'] || 'Nema dostupan email',
    # IMPROVED: Smart website with labels
    'website' => if majstor['website'] && !majstor['website'].empty?
      url = if majstor['website'].match?(/^https?:\/\//)
              majstor['website']
            else
              "https://#{majstor['website']}"
            end
      
      # Detect platform and set label
      label = case url
              when /facebook\.com/ then 'Facebook'
              when /instagram\.com/ then 'Instagram'
              when /youtube\.com/ then 'YouTube'
              when /tiktok\.com/ then 'TikTok'
              when /linkedin\.com/ then 'LinkedIn'
              when /twitter\.com/, /x\.com/ then 'Twitter'
              else 'Link'
              end
      
      { 'url' => url, 'label' => label }
    else
      'Nema dostupan website'
    end,
    # NEW: Pass ALL opis_dugi fields individually to front matter
    'opis_dugi' => majstor['opis_dugi'] || '',
    'opis_dugi2' => majstor['opis_dugi2'] || '',
    'opis_dugi3' => majstor['opis_dugi3'] || '',
    'opis_dugi4' => majstor['opis_dugi4'] || '',
    'opis_dugi5' => majstor['opis_dugi5'] || '',
    'detaljan_opis' => detaljan_opis, # Keep for backward compatibility
    'slug' => majstor['slug'],
    'image' => majstor['image'] || 'https://raw.githubusercontent.com/NoToolsNoCraft/Ej-Majstore/refs/heads/main/images/izvodja%C4%8Di%20zanatskih%20radova%20logo.webp',
    'additional_images' => majstor['additional_images'] || [],
    # NEW: Services array
    'services' => majstor['services'] || [],
    'faq' => majstor['faq'] || [],
    'permalink' => "/izvodjaci/#{slugify(majstor['mesto'][0])}/#{slugify(majstor['slug'])}/"
  }

  # Generate the file name using the slug
  file_name = "#{majstor['slug']}.md"
  file_path = File.join(output_base_dir, file_name)

  # ✅ CLEAN CONTENT - JUST FRONT MATTER + EMPTY LINE
  content = <<~CONTENT
#{YAML.dump(front_matter)}---

CONTENT

  # Write the file with UTF-8 encoding (no BOM)
  File.write(file_path, content, encoding: 'UTF-8')
  puts "Created: #{file_path}"
end