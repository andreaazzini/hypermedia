module DocenteHelper

  def create_teacher_path
    s = "<div class='path'>"

    if  params.has_key?(:surname) && params.has_key?(:year) && params.has_key?(:section)
      s += "<a href='/classe'>Classi</a> &gt; "

      s += "<a href='/classe/" + params[:year] + "/" + params[:section] + "'>"
      s += year_to_s(params[:year])
      s += " " + params[:section].upcase
      s += "</a> &gt; "

      s += "<a href='/classe/" + params[:year] + "/" + params[:section] + "/docenti_della_classe'>Docenti della Classe</a> &gt; "
      s += complete_name(params[:surname])
    elsif params.has_key?(:year) && params.has_key?(:section)
      s += "<a href='/classe'>Classi</a> &gt; "

      s += "<a href='/classe/" + params[:year] + "/" + params[:section] + "'>"
      s += year_to_s(params[:year])
      s += " " + params[:section].upcase
      s += "</a> &gt; Docenti della Classe"
    elsif params.has_key?(:surname)
      s += "<a href='/docente'>Docenti</a> &gt; "
      s += complete_name(params[:surname])
    elsif params.has_key?(:id)
      s += "<a href='/attivita_extra'>Attivit&agrave; Extracurriculari</a> &gt; "

      s += "<a href='/attivita_extra/" + params[:id] + "'>"
      s += Activity.find_by_id(params[:id]).name
      s += "</a> &gt; "
    end

    s += "</div>"
    return s.html_safe
  end

  def back_to_index_docente
    s = ""
    if params.has_key?(:surname) && params.has_key?(:year) && params.has_key?(:section)
      s = "<div class='back_to_index'><a href='"
      s += "/classe/" + params[:year] + "/" + params[:section] + "/docenti_della_classe'>Torna a Docenti della classe"
      s += "</a></div>"
    elsif params.has_key?(:year) && params.has_key?(:section)
      s = "<div class='back_to_index'><a href='"
      s += "/classe/" + params[:year] + "/" + params[:section] + "'>Torna alla classe"
      s += "</a></div>"
    elsif params.has_key?(:id)
      s = "<div class='back_to_index'><a href='"
      s += "/attivita_extra/" + params[:id] + "'>Torna all'attivit&agrave;: " + Activity.find_by_id(params[:id]).name
      s += "</a></div>"
    elsif params.has_key?(:surname)
      s = "<div class='back_to_index'><a href='"
      s += "/docente'>Torna a Tutti i Docenti"
      s += "</a></div>"
    end

    return s.html_safe
  end

  def print_link_group_link
    if !(params.has_key?(:year) || params.has_key?(:section) || params.has_key?(:id))
      s = "<ul class='group_link'>"

      s +="<li><a href='/docente/"
      s += params[:surname]
      s += "/classi_in_cui_insegna'>Classi in cui insegna</a></li>"

      s += "<li><a href='/docente/"
      s += params[:surname]
      s += "/attivita_che_coordina'>Attivit&agrave; che coordina</a></li>"

      s += "</ul>"

      return s.html_safe
    end
  end

end