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

      if link[0].include? params[:action]
        s += " class='active'"
      end

      s += ">" + link[1] + "</a></li>"
    end
    s += "</ul>"

    return s.html_safe
  end

  def check_if_exist
    redirect = false

    if params.has_key?(:year) && params.has_key?(:section)
      year = params[:year]
      section = params[:section]
      if SchoolClass.where(:year => year, :section => section).count == 0
        redirect = true
      end
    end

    if params.has_key?(:surname)
      surname = correct_surname(params[:surname])
      if Teacher.where(:surname => surname).count == 0
        redirect = true
      end
    end

    if params.has_key?(:type)
      type = params[:type]
      if Activity.where(:type => type).count == 0
        redirect = true
      end
    end

    if params.has_key?(:id)
      id = params[:id]
      if Activity.where(:id => id).count == 0
        redirect = true
      end
    end

    if redirect
      raise ActionController::RoutingError.new('Not Found')
    end

  end

end
