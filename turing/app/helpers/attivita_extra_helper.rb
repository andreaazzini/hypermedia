module AttivitaExtraHelper

  def back_to_index_attivita
    s = "<div class='back_to_index'>"

    if params.has_key?(:surname)
      s += "<a href='/docente/" + params[:surname] + "'>Torna al docente</a>"
    elsif params.has_key?(:type)
      s += "<a href='/attivita'>Torna a Tutte le Attivit&agrave; Extracurricolari</a>"
    elsif params.has_key?(:id)
      type = Activity.find_by_id(params[:id]).type
      s += "<a href='/attivita/" + type + "'>Torna a Tutte le Attivit&agrave; " + type + "</a>"
    end

    s += "</div>"
    return s.html_safe
  end

  def complete_activity_name
    return Activity.find_by_id(params[:id]).name
  end

  def create_attivita_path
    s = "<div class='path'>"

    if params.has_key?(:surname)
      s += "<a href='/docente'>Docente</a> &gt; "

      s += "<a href='/docente/" + params[:surname] + "'>"
      s += complete_name(params[:surname])
      s += "</a> &gt; "

      s += "<a href='/docente/" + params[:surname] + "/attivita_che_coordina'>Attivita che Coordina</a> &gt; "

      s += Activity.find_by_id(params[:id]).name
    else
      s += "<a href='/attivita_extra'>Attivit&agrave; Extracurriculari</a> &gt; "

      s += "<a href='/attivita_extra/" + Activity.find_by_id(params[:id]).type + "'>"
      s += "Attivit&agrave; Extracurricolari "
      s += Activity.find_by_id(params[:id]).type
      s += "</a> &gt; "

      s += Activity.find_by_id(params[:id]).name
    end

    s += "</div>"
    return s.html_safe
  end

end
