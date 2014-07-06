module ClasseHelper

  def create_class_path
    s = "<div class='path'>"

    if params.has_key?(:surname)
      s += "<a href='/docente'>Docenti</a> &gt; "

      s += "<a href='/docente/" + params[:surname] + "'>"
      s += complete_name(params[:surname])
      s += "</a> &gt; "

      s += "<a href='/docente/" + params[:surname] + "/classi_in_cui_insegna'>Classi in cui Insegna</a> &gt; "
      s += complete_class_name
    else
      s += "<a href='/classe'>Classi</a> &gt; "
      s += complete_class_name
    end

    s += "</div>"
    return s.html_safe
  end

  def complete_class_name
    return "Classe " + year_to_s(params[:year]) + " " + params[:section]
  end

  def back_to_index_classe
    s = "<div class='back_to_index'><a href='"

    if params.has_key?(:surname)
      s += "/docente/" + params[:surname] + "/classi_in_cui_insegna'>Torna a Classi in cui insegna"
    else
      s += "/classe'>Torna a Tutte le classi"
    end

    s += "</a></div>"
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
