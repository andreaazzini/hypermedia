module ApplicationHelper

  #link[0] -> url
  #link[1] -> name
  #link[2] -> 0 normal li, 1 has children, 2 last child
  def print_nav(links)
    s = "<ul>"
    for link in links

      s += "<li><a href='" + link[0] + "'"
      c = link[0].split("/")
      if params[:controller] == c[1]
        s += " class='active'"
      end
      s += ">" + link[1] + "</a>"

      if link[2] == 0
        s += "</li>"
      elsif link[2] == 1
        s += "<ul>"
      elsif link[2] == 2
        s += "</li></ul></li>"
      end
    end

    s += "</ul>"
    return s.html_safe
  end

  #link[0] -> url
  #link[1] -> name
  def print_aside(links)
    s = "<ul>"
    for link in links
      s += "<li><a href='" + link[0] + "'"

      c = link[0].split("/")
      if params[:action] == c[2]
        s += " class='active'"
      end

      s += ">" + link[1] + "</a></li>"
    end
    s += "</ul>"

    return s.html_safe
  end
end
