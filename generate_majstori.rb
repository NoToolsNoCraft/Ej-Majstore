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

  # Prepare the front matter
  front_matter = {
    'layout' => 'majstor_profil',
    'title' => "#{majstor['ime']} - #{kategorija_str} u #{majstor['mesto'].join(', ')}",
    'description' => "#{majstor['opis_kratak']} Pronađite #{majstor['ime']} za #{kategorija_str} usluge u #{majstor['mesto'].join(', ')}.",
    'ime' => majstor['ime'],
    'kategorija' => kategorija,  # Keep as array if it is one
    'mesto' => majstor['mesto'].join(', '),
    'kontakt_telefon' => majstor['telefon'] || 'Nema dostupan kontakt',
    'email' => majstor['email'] || 'Nema dostupan email',
    'website' => if majstor['website'] && !majstor['website'].empty?
               if majstor['website'].match?(/^https?:\/\//)
                 majstor['website']
               else
                 "https://#{majstor['website']}"
               end
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
    'image' => majstor['image'] || 'https://www.shutterstock.com/image-illustration/illustration-construction-worker-purple-jacket-600nw-2609794615.jpg',
    'additional_images' => majstor['additional_images'] || [],
    # NEW: Services array
    'services' => majstor['services'] || [],
    'faq' => majstor['faq'] || [],
    'permalink' => "/majstori/#{slugify(majstor['mesto'][0])}/#{slugify(majstor['slug'])}/"
  }

  # Generate the file name using the slug
  file_name = "#{majstor['slug']}.md"
  file_path = File.join(output_base_dir, file_name)

  # Prepare the page content
  content = <<~CONTENT
#{YAML.dump(front_matter)}---
# #{majstor['ime']}
<p class="description">#{majstor['opis_kratak']}</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> #{majstor['mesto'].join(', ')}</li>
    <li><strong>Kontakt telefon:</strong> #{majstor['telefon'] || 'Nema dostupan kontakt'}</li>
    <li><strong>Email:</strong> #{majstor['email'] || 'Nema dostupan email'}</li>
  </ul>
</div>

# NEW: Services Section in content (optional - we'll use front matter in template)
{% if page.services.size > 0 %}
<div class="services-section">
  <h2>Usluge</h2>
  {% for service in page.services %}
  <div class="service-block">
    <h3>{{ service.title }}</h3>
    <p>{{ service.description }}</p>
  </div>
  {% endfor %}
</div>
{% endif %}
CONTENT

  # Write the file with UTF-8 encoding (no BOM)
  File.write(file_path, content, encoding: 'UTF-8')
  puts "Created: #{file_path}"
end