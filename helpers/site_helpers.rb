module SiteHelpers

  def page_title
    page_title = current_page.metadata[:locals][:title] || data.page.title
    page_title ? "#{page_title} | Upper South Editions" : "Upper South Editions"
  end

  def make_path(string)
    string.downcase.gsub(/[ :‘’“”é@!\/]/, ' ' => '-', '@/' => '-', ':‘’“”!' => '', 'é' => 'e', '/' => '-')
  end

end
