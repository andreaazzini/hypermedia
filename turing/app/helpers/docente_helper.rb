module DocenteHelper

  def create_teacher_path
    s = "<div class='path'>"

    if params[:controller] == "docente"
      s += "<a href='/docente'>Docenti</a> &gt; "
      s += complete_name(params[:surname])
    elsif params[:controller] == "classe"
      s += "<a href='/classe'>Classi</a> &gt; "

      s += "<a href='/classe/" + params[:year] + "/" + params[:section] + "'>"
      s += params[:year] + " " + params[:section].upcase
      s += "</a> &gt; "

      s += "<a href='/classe/" + params[:year] + "/" + params[:section] + "/docenti_della_classe'>Docenti della Classe</a> &gt; "
      s += complete_name(params[:surname])
    end

    s += "</div>"
    return s.html_safe
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

  def create_back_to_index
    s = "<div class='back_to_index'><a href='"

    if params[:controller] == "docente"
      s += "/docente"
    elsif params[:controller] == "classe"
      s += "/classe/" + params[:year] + "/" + params[:section] + "/docenti_della_classe"
    end

    s += "'>Torna a Tutti i Docenti</a></div>"
    return s.html_safe
  end

end