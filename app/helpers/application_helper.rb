module ApplicationHelper
  def full_title(page_titre)
    base_title = "Ruby on Rails Tutorial Example App"
    if page_titre.empty?
      return base_title
    else
      return "#{base_title} | #{page_titre}"
    end
  end
end
