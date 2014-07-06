class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #url
  # name
  # 0 normal li, 1 has children, 2 last child
  def header_nav
    return [["/scuola/storia", "La Scuola", 1],
            ["#", "Personale", 0],
            ["#", "Servizi di Supporto", 2],
            ["#", "Offerta Formativa", 1],
            ["#", "Modulistica", 0],
            ["#", "Calendario", 2],
            ["/classe/tutte_le_classi", "Classi", 0],
            ["/docente/tutti_i_docenti", "Docenti", 0],
            ["#", "Circolari", 0],
            ["#", "Attivit&agrave; Extra", 0],
            ["#", "Strutture", 0],
            ["#", "News", 0]]
  end

  # url
  # name
  # 0 normal li, 1 has children, 2 last child
  def footer_nav
    return [["/area_riservata/comunicazioniPersonali", "Area Riservata", 0],
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

  helper_method :year_to_s


  def correct_surname(string)
    str = string.split("_")
    for s in str
      s[0] = s[0].upcase
    end
    return str.join(" ")
  end

  helper_method :correct_surname

  def complete_name(surname)
    s = correct_surname(surname)
    teacher = Teacher.where(surname: s)
    return teacher[0].name + " " + teacher[0].surname
  end

  helper_method :complete_name
end