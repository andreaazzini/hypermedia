module DocenteHelper

  def create_teacher_path
    s = "<div class='path'>"

    if params.has_key?(:year) && params.has_key?(:section)
      s += "<a href='/classe'>Classi</a> &gt; "

      s += "<a href='/classe/" + params[:year] + "/" + params[:section] + "'>"
      s += year_to_s(params[:year])
      s += " " + params[:section].upcase
      s += "</a> &gt; "

      s += "<a href='/classe/" + params[:year] + "/" + params[:section] + "/docenti_della_classe'>Docenti della Classe</a> &gt; "
      s += complete_name(params[:surname])
    else
      s += "<a href='/docente'>Docenti</a> &gt; "
      s += complete_name(params[:surname])
    end

    s += "</div>"
    return s.html_safe
  end

  def back_to_index_docente
    s = "<div class='back_to_index'><a href='"

    if params.has_key?(:year) && params.has_key?(:section)
      s += "/classe/" + params[:year] + "/" + params[:section] + "/docenti_della_classe'>Torna a Docenti della classe"
    else
      s += "/docente'>Torna a Tutti i Docenti"
    end

    s += "</a></div>"
    return s.html_safe
  end

end