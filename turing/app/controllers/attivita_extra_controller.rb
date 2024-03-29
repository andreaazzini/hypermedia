class AttivitaExtraController < ApplicationController
  include AttivitaExtraHelper
  def descrizione
      @s = '<h1>' + complete_activity_name + '</h1>'
      @activity = Activity.where(:id => params[:id])[0]
      @s += '<p>' + @activity.description + '</p>'
      @s = @s.html_safe
      
      @t = '<ul>'
      teachers = Activity.find_by_id(params[:id]).teachers
      (0..teachers.count - 1).step(1) do |n|
          @t += '<li><a href="/attivita_extra/' + params[:id] + '/' + teachers[n].surname.downcase.split(' ').join('_') + '">'
          @t += complete_name(teachers[n].surname) + '</a></li>'
      end
      @t += '</ul>'
      @t = @t.html_safe
  end

  # url
  # name
  def attivita_aside
    return [[dinamic_path("descrizione"), "Descrizione"]]
  end

  def tutte_le_attivita
    if params.has_key?(:activity_type) || params.has_key?(:surname)
      if params.has_key?(:surname)
        surname = params[:surname]

        activities = Teacher.where(:surname => correct_surname(surname))[0].activities.count
      else
        activity_type = params[:activity_type]

        activities = Activity.where(:activity_type => activity_type).count
      end

      if activities % 2 != 0
        activities = (activities / 2) + 1
      else
        activities = activities / 2
      end

      s = ""
      (0..1).step(1) do |column|

        if surname
          old = Teacher.where(:surname => correct_surname(surname))[0].activities.order(:name).pluck(:name)[activities * column]
        else
          old = Activity.where(:activity_type => activity_type).order(:name).pluck(:name)[activities * column]
        end

        s += "<div class='column'>"
        (0..activities - 1).step(1) do |n|

          if surname
            attivita = Teacher.where(:surname => correct_surname(surname))[0].activities.order(:name).pluck(:id, :name)[activities * column + n]
          else
            attivita = Activity.where(:activity_type => activity_type).order(:name).pluck(:id, :name)[activities * column + n]
          end

          if attivita
            current = attivita[1][0]
            if current != old
              s += "<br />"
              old = current
            end
            
            if surname
                s += "<a href='/docente/" + surname + "/" + attivita[0].to_s + "/descrizione'>"
                s += attivita[1]
                s += "</a><br />"
            else
                s += "<a href='/attivita_extra/" + attivita[0].to_s + "/descrizione'>"
                s += attivita[1]
                s += "</a><br />"
            end
          end
        end
        s += "</div>\n"
      end

      return s.html_safe
    end
  end

  helper_method :attivita_aside
  helper_method :tutte_le_attivita

end
