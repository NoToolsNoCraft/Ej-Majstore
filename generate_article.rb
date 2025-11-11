require 'json'
require 'fileutils'
require 'yaml'

puts "Generating Blog Articles with Schema.org (via plugin) & LINKS..."

data_file = '_data/articles.json'
output_base_dir = '_blog'

FileUtils.mkdir_p(output_base_dir)
puts "Created folder: #{output_base_dir}"

data = JSON.parse(File.read(data_file))
puts "Loaded #{data.length} articles"

def slugify(text)
  return '' if text.nil? || text.empty?
  text.downcase
      .gsub(/[šŠ]/u, 's')
      .gsub(/[čČćĆ]/u, 'c')
      .gsub(/[žŽ]/u, 'z')
      .gsub(/[đĐ]/u, 'dj')
      .gsub(/[^a-z0-9\s-]/i, '')
      .gsub(/\s+/, '-')
      .gsub(/-+/, '-')
      .gsub(/^-|-$/, '')
      .strip
end

# ✅ Convert Markdown Links to HTML
def process_content_with_links(content)
  return content unless content.is_a?(String)
  
  # Convert [text](url) to <a href="url" target="_blank" rel="noopener">text</a>
  content.gsub!(/\[([^\]]+)\]\((https?:\/\/[^\s\)]+)\)/i) do |match|
    link_text = $1
    link_url = $2
    "<a href=\"#{link_url}\" target=\"_blank\" rel=\"noopener\">#{link_text}</a>"
  end
  
  content
end

# ❌ REMOVED: Custom generate_article_schema function is no longer needed.
# The jekyll-seo-tag plugin handles this automatically and correctly.

created_count = 0
data.each_with_index do |article, index|
  puts "\n--- Article #{index + 1}: #{article['title']}"
  
  next unless article['title']
  
  slug = article['slug'] || slugify(article['title'])
  puts "   Slug: #{slug}"
  
  date = article['date'] || Time.now.strftime('%d-%m-%Y')
  excerpt = article['description'] || article['title'][0,100] + "..."
  author = article['author'] || 'Admin'
  
  # ✅ PROCESS SECTIONS WITH LINKS
  sections = article['sections'] || []
  sections.each do |section|
    case section['type']
    when 'paragraph', 'h2'
      section['content'] = process_content_with_links(section['content'])
    when 'bullet_list'
      section['items'].each { |item| item.replace(process_content_with_links(item)) }
    end
  end
  puts "   Sections: #{sections.length} (WITH LINKS!)"
  
  # ❌ REMOVED: No need to call generate_article_schema or store it in a variable.
  
  front_matter = {
    'layout' => 'article',
    'title' => article['title'],
    'description' => excerpt,
    'date' => date,
    'author' => author,
    'slug' => slug,
    'image' => article['image'],
    'sections' => sections,
    # ❌ REMOVED: 'schema' => schema_json is gone.
  }
  
  file_name = "#{slug}.md"
  file_path = File.join(output_base_dir, file_name)
  
  full_content = <<~CONTENT
#{YAML.dump(front_matter)}---
  CONTENT
  
  File.write(file_path, full_content, encoding: 'UTF-8')
  created_count += 1
  puts "   ✅ CREATED: #{file_name} (#{sections.length} sections + LINKS)"
end

puts "\n🎉 SUCCESS! Generated #{created_count} blog articles WITH LINKS in _blog/"
puts "Next: bundle exec jekyll serve"
