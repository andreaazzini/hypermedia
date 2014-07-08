module AttivitaExtraHelper

  def back_to_index_attivita
    s = "<div class='back_to_index'>"

    if params.has_key?(:surname) && params.has_key?(:id)
      s += "<a href='/docente/" + params[:surname] + "/attivita_che_coordina'>Torna alle Attivit&agrave; che coordina</a>"
    elsif params.has_key?(:surname)
      s += "<a href='/docente/" + params[:surname] + "'>Torna al docente</a>"
    elsif params.has_key?(:activity_type)
      s += "<a href='/attivita_extra'>Torna a Tutte le Attivit&agrave; Extracurricolari</a>"
    elsif params.has_key?(:id)
      activity_type = Activity.find_by_id(params[:id]).activity_type
      s += "<a href='/attivita_extra/" + activity_type + "'>Torna a Tutte le Attivit&agrave; " + activity_type + "</a>"
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

      s += "<a href='/attivita_extra/" + Activity.find_by_id(params[:id]).activity_type + "'>"
      s += "Attivit&agrave; Extracurricolari " + Activity.find_by_id(params[:id]).activity_type
      s += "</a> &gt; "

      s += Activity.find_by_id(params[:id]).name
    end

    s += "</div>"
    return s.html_safe
  end

  def create_attivita_next_previous
    id_prev = ""
    id_next = ""
    id = params[:id]

    url = ""

    if params.has_key?(:surname)
      activities = Teacher.where(:surname => correct_surname(params[:surname]))[0].activities
      url = "/docente/" + params[:surname] + "/"
    else
      activity_type = Activity.find_by_id(id).activity_type
      activities = Activity.where(:activity_type => activity_type)
      url = "/attivita_extra/" + activity_type + "/"
    end

    n = 0
    while n < activities.count do
      if activities[n].id.to_s == id.to_s
        break
      end
      n += 1
    end

    if n > 0
      id_prev = activities[n - 1].id
    end

    if n < activities.count - 1
      id_next = activities[n + 1].id
    end

    s = ""

    if id_prev != ""
      s += "<div class='prev'><a href='" + url + id_prev.to_s
      s += "'>Attivit&agrave; Precedente</a></div>"
    end

    if id_next != ""
      s += "<div class='next'><a href='" + url + id_next.to_s
      s += "'>Attivit&agrave; Seguente</a></div>"
    end

    return s.html_safe
  end

end
