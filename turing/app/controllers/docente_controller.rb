class DocenteController < ApplicationController
  def curriculum
      @teacher = Teacher.where(:surname => correct_surname(params[:surname]))[0]
      @s = '<p>' + ActionController::Base.helpers.image_tag(@teacher.photo_url, size: "200x200", alt: @teacher.surname, title: @teacher.surname) + @teacher.curriculum + '</p>'
      @s = @s.html_safe
  end

  def orario_ricevimenti
      @teacher = Teacher.where(:surname => correct_surname(params[:surname]))[0]
      @of = @teacher.office_hours[0]
      if params.has_key?(:office_hour)
          if params[:office_hour][:nome] == '' || params[:office_hour][:cognome] == ''
              flash[:message] = 'Nome e cognome sono richiesti per prenotare un appuntamento'
          else
              flash[:message] = 'Grazie ' + params[:office_hour][:nome] + ' ' + params[:office_hour][:cognome] + '! Appuntamento prenotato.'
          end
      end
  end

  def tutti_i_docenti
    teachers = Teacher.count

    if params.has_key?(:year) && params.has_key?(:section)
      year = params[:year]
      section = params[:section]

      teachers = SchoolClass.where(:year => year, :section => section)[0].teachers.count
    end

    if teachers % 2 != 0
      teachers = (teachers / 2) + 1
    else
      teachers = teachers / 2
    end

    s = ""
    (0..1).step(1) do |column|

      if (year && section)
        old = SchoolClass.where(:year => year, :section => section)[0].teachers.order(:surname).pluck(:surname)[teachers * column]
      else
        old = Teacher.order(:surname).pluck(:surname)[teachers * column]
      end

      s += "<div class='column'>"
      (0..teachers - 1).step(1) do |n|

        if (year && section)
          docente_id = SchoolClass.where(:year => year, :section => section)[0].teachers.order(:surname).pluck(:id)[teachers * column + n]
        else
          docente_id = Teacher.order(:surname).pluck(:id)[teachers * column + n]
        end

        if docente_id
          old = old[0]

          surname = Teacher.find_by_id(docente_id).surname
          current = surname[0]
          if current != old
            s += "<br />"
            old = current
          end

          url = surname.downcase.split(" ").join("_")
          if (year && section)
            s += "<a href='/classe/" + year + "/" + section + "/" + url + "'>"
          else
            s += "<a href='/docente/" + url + "'>"
          end
          s += surname
          s += " "
          s += Teacher.find_by_id(docente_id).name
          s += "</a><br />"
        end
      end
      s += "</div>\n"
    end

    return s.html_safe
  end

  # url
  # name
  def docente_aside
    return [[dinamic_path("curriculum"), "Curriculum"],
            [dinamic_path("orario_ricevimenti"), "Orario Ricevimento"]]
  end

  helper_method :tutti_i_docenti
  helper_method :docente_aside

end
