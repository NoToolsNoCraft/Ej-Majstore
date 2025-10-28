require 'json'
require 'fileutils'
require 'yaml'

data_file      = '_data/majstori.json'
output_dir     = '_majstori'
FileUtils.mkdir_p(output_dir)

data = JSON.parse(File.read(data_file))

def slugify(text)
  text.downcase
      .gsub(/[šŠ]/u, 's').gsub(/[čČćĆ]/u, 'c').gsub(/[žŽ]/u, 'z').gsub(/[đĐ]/u, 'dj')
      .gsub(/[^a-z0-9\s-]/i, '').gsub(/\s+/, '-').gsub(/-+/, '-').gsub(/^-|-$/, '')
end

def fix_image_url(url)
  return url unless url
  url = url.gsub(/refs\/heads\/main/, 'main')
  if url.include?('raw.githubusercontent.com')
    url = url.gsub('raw.githubusercontent.com', 'cdn.jsdelivr.net/gh')
             .gsub(/\/main\//, '@main/')
  end
  url
end

data.each do |majstor|
  next unless majstor['ime'] && majstor['slug']

  kategorija = majstor['kategorija']
  kategorija_str = Array(kategorija).join(', ')
  mesto_arr = Array(majstor['mesto'])
  mesto_str = mesto_arr.join(', ')

  website = if majstor['website'] && !majstor['website'].empty?
              url = majstor['website'].match?(/^https?:\/\//) ? majstor['website'] : "https://#{majstor['website']}"
              label = case url
                      when /facebook/ then 'Facebook'
                      when /instagram/ then 'Instagram'
                      when /youtube/ then 'YouTube'
                      when /tiktok/ then 'TikTok'
                      when /linkedin/ then 'LinkedIn'
                      when /twitter|x\.com/ then 'Twitter'
                      else 'Link do sajta'
                      end
              { 'url' => url, 'label' => label }
            else
              'Nema dostupan website'
            end

  # ---- SECTIONS (fallback if none supplied) ----
  sections = if majstor['sections'].is_a?(Array) && !majstor['sections'].empty?
               majstor['sections']
             else
               # minimal fallback – you can delete if every entry has sections
               [{ 'type' => 'h1', 'content' => "#{majstor['ime']} – #{kategorija_str} u #{mesto_str}" }]
             end

  # ---- FRONT MATTER ----
  front_matter = {
    'layout'         => 'majstor_profil',
    'title'          => "#{majstor['ime']}",
    'description'    => "#{majstor['opis_kratak'] || majstor['ime']} u #{mesto_str}.",
    'ime'            => majstor['ime'],
    'kategorija'     => kategorija,
    'mesto'          => mesto_str,
    'address'        => majstor['address'] || 'Nema dostupnu adresu',
    'kontakt_telefon'=> majstor['telefon'] || 'Nema dostupan kontakt',
    'email'          => majstor['email'] || 'Nema dostupan email',
    'googlemaps'     => majstor['googlemaps'] || '',
    'website'        => website,
    'slug'           => majstor['slug'],
    'thumbnail'      => fix_image_url(majstor['thumbnail']),
    'hero_image'     => fix_image_url(majstor['hero_image'] || majstor['thumbnail']),
    'discover_title' => majstor['discover_title'],
    'author'         => majstor['author'] || 'Ej Majstore! Tim',
    'author_slug'    => majstor['author_slug'] || 'team',
    'author_bio'     => majstor['author_bio'],
    'date'           => majstor['date'] || Time.now.strftime('%Y-%m-%d'),
    'last_modified'  => majstor['last_modified'] || Time.now.strftime('%Y-%m-%d'),
    'sections'       => sections,
    'services'       => majstor['services'] || [],
    'faq'            => majstor['faq'] || [],
    'tips'           => majstor['tips'] || [],          # <-- FROM JSON ONLY
    'tips_title'     => majstor['tips_title'],
    'permalink'      => "/izvodjaci/#{slugify(mesto_arr.first)}/#{slugify(majstor['slug'])}/",
    'sections'       => sections,
  }

  file_name = "#{majstor['slug']}.md"
  path = File.join(output_dir, file_name)

  File.write(path, "#{YAML.dump(front_matter)}---\n", encoding: 'UTF-8')
  puts "Created: #{path}"
end