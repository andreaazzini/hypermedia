class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #url
  # name
  # 0 normal li, 1 has children, 2 last child
  def header_nav
    return [["/scuola", "La Scuola &#x25BE;", 1],
            ["#", "Personale", 0],
            ["#", "Servizi di Supporto", 2],
            ["#", "Offerta Formativa &#x25BE;", 1],
            ["#", "Modulistica", 0],
            ["#", "Calendario", 2],
            ["/classe/tutte_le_classi", "Classi", 0],
            ["/docente/tutti_i_docenti", "Docenti", 0],
            ["#", "Circolari", 0],
            ["/attivita_extra", "Attivit&agrave; Extra", 0],
            ["#", "Strutture", 0],
            ["#", "News", 0]]
  end

  # url
  # name
  # 0 normal li, 1 has children, 2 last child
  def footer_nav
    return [["/area_riservata/comunicazioni_personali", "Area Riservata", 0],
            ["#", "Contatti", 0],
            ["#", "Informazioni Legali", 0]]
  end

  def year_to_s(year)
    if (year == 1 || year == "1")
      return "Prima"
    elsif (year == 2 || year == "2")
      return "Seconda"
    elsif (year == 3 || year == "3")
      return "Terza"
    elsif (year == 4 || year == "4")
      return "Quarta"
    elsif (year == 5 || year == "5")
      return "Quinta"
    end
  end

  def correct_surname(string)
    str = string.split("_")
    for s in str
      s[0] = s[0].upcase
    end
    return str.join(" ")
  end

  def complete_name(surname)
    s = correct_surname(surname)
    teacher = Teacher.where(surname: s)
    return teacher[0].name + " " + teacher[0].surname
  end

  def dinamic_path(action)
    str = request.path
    if params.has_key?(:action)
      str.slice! params[:action]
    else
      str += "/"
    end
    str += "/"
    str += action

    str.gsub! %r{/+}, '/'
    return str
  end

  def print_session
    if session.has_key?(:user)
      user = User.where(:username => session[:user])[0]
      s = "<span class='session_name'>"

      case user.type_user
        when 0
          s += user.username
        when 1
          s += complete_name(user.username)
        when 2
          s += user.username
      end

      s += "</span>"
      s += "<span class='session_logout'><a href='/area_riservata/logout'>Logout</a></span>"

      return s.html_safe
    end
  end

  helper_method :year_to_s
  helper_method :correct_surname
  helper_method :complete_name
  helper_method :dinamic_path
  helper_method :print_session

end