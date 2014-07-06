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
end
