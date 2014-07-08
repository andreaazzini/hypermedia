module ClasseHelper

  def create_class_path
    s = ""

    if params.has_key?(:surname) && params.has_key?(:year) && params.has_key?(:section)
      s = "<div class='path'>"
      s += "<a href='/docente'>Docenti</a> &gt; "

      s += "<a href='/docente/" + params[:surname] + "'>"
      s += complete_name(params[:surname])
      s += "</a> &gt; "

      s += "<a href='/docente/" + params[:surname] + "/classi_in_cui_insegna'>Classi in cui Insegna</a> &gt; "
      s += complete_class_name
      s += "</div>"
    elsif params.has_key?(:surname)
      s = "<div class='path'>"
      s += "<a href='/docente'>Docenti</a> &gt; "

      s += "<a href='/docente/" + params[:surname] + "'>"
      s += complete_name(params[:surname])
      s += "</a> &gt; Classi in cui insegna"
      s += "</div>"
    elsif params.has_key?(:year) && params.has_key?(:section)
      s = "<div class='path'>"
      s += "<a href='/classe'>Classi</a> &gt; "
      s += complete_class_name
      s += "</div>"
    end

    return s.html_safe
  end

  def complete_class_name
    return "Classe " + year_to_s(params[:year]) + " " + params[:section]
  end

  def back_to_index_classe
    s = ""

    if params.has_key?(:surname) && params.has_key?(:year) && params.has_key?(:section)
      s = "<div class='back_to_index'><a href='"
      s += "/docente/" + params[:surname] + "/classi_in_cui_insegna'>Torna a Classi in cui insegna"
      s += "</a></div>"
    elsif params.has_key?(:surname)
      s = "<div class='back_to_index'><a href='"
      s += "/docente/" + params[:surname] + "'>Torna al Docente"
      s += "</a></div>"
    elsif params.has_key?(:year) && params.has_key?(:section)
      s = "<div class='back_to_index'><a href='"
      s += "/classe'>Torna a Tutte le classi"
      s += "</a></div>"
    end

    return s.html_safe
  end

  def print_link_teachers
    if !params.has_key?(:surname)
      s = "<ul class='group_link'><li><a href='/classe/"
      s += params[:year] + "/" + params[:section]
      s += "/docenti_della_classe'>Docenti della classe</a></li></ul>"

      return s.html_safe
    end
  end
end
