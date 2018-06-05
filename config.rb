require 'susy'

compass_config do |config|
  config.output_style = :expanded
end

activate :directory_indexes

set :css_dir, 'assets/css'
set :images_dir, 'assets/img'
set :relative_links, true


# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end

# Proxy files
data.art.each do |item|
  proxy "/art/#{item.title.downcase.gsub(/[ \/]/,"-")}.html", "/art/item.html", ignore: true, locals: {
    title: item.title,
    dimensions: item.dimensions,
    price: item.price,
    paypal_hosted_button_id: item.paypal_hosted_button_id,
  }
end
