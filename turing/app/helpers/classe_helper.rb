module ClasseHelper

  def create_class_path
    s = "<div class='path'>"

    if params[:controller] == "classe"
      s += "<a href='/classe'>Classi</a> &gt; "
      s += complete_class_name
    elsif params[:controller] == "docente"
      s += "<a href='/docente'>Docenti</a> &gt; "

      s += "<a href='/docente/" + params[:surname] + "'>"
      s += DocenteHelper.new.complete_name
      s += "</a> &gt; "

      s += "<a href='/docente/" + params[:surname] + "/classi_in_cui_insegna'>Classi in cui Insegna</a> &gt; "
      s += complete_class_name
    end

    s += "</div>"
    return s.html_safe
  end

  def complete_class_name
    return params[:year] + " " + params[:section]
  end

  def create_back_to_index
    s = "<div class='back_to_index'><a href='"

    if params[:controller] == "classe"
      s += "/classe"
    elsif params[:controller] == "docente"
      s += "/docente/" + params[:surname] + "/classi_in_cui_insegna"
    end

    s += "'>Torna a Classi in cui insegna</a></div>"
    return s.html_safe
  end

end
