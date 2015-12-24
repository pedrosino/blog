module ApplicationHelper
  def flash_message
    messages = ""
    [:notice, :info, :warning, :error].each {|type|
      if flash[type]
        messages += "<p class=\"#{type}\">#{flash[type]}</p>"
      end
    }

    messages
  end

  def md(content)
    Redcarpet::Markdown.new(Redcarpet::Render::HTML.new).render(content).html_safe
  end

end
