class AttivitaExtraController < ApplicationController
  def descrizione
  end

  # url
  # name
  def attivita_aside
    return [[dinamic_path("descrizione"), "Descrizione"]]
  end

  helper_method :attivita_aside

  def tutte_le_attivita
    activities = Activity.count

    if activities % 2 != 0
      activities = (activities / 2) + 1
    else
      activities = activities / 2
    end

    s = ""
    (0..1).step(1) do |column|

      old = Activity.order(:name).pluck(:name)[activities * column][0]

      s += "<div class='column'>"
      (0..activities - 1).step(1) do |n|

        attivita = Activity.order(:name).pluck(:id, :name)[activities * column + n]

        if attivita
          current = attivita[1][0]
          if current != old
            s += "<br />"
            old = current
          end

          s += "<a href='/attivita/" + attivita[0] + "'>"
          s += attivita[1]
          s += "</a><br />"
        end
      end
      s += "</div>\n"
    end

    return s.html_safe
  end

  helper_method :tutte_le_attivita
end
