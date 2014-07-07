class ClasseController < ApplicationController
  def bacheca
    @s = ""
    boards = SchoolClass.where(:year => params[:year], :section => params[:section])[0].boards
    (0..boards.count-1).step(1) do |n|
      @s += '<span class="date">' + boards[n].date.to_s + '</span>'
      @s += '<p>' + boards[n].description + '</p>'
    end

    @s = @s.html_safe
  end

  def coordinamento_e_consiglio_di_classe
    @s = SchoolClass.where(:year => params[:year], :section => params[:section])[0].council
    @s = @s.html_safe
  end

  def materiale
    @s = "<ul>"
    books = SchoolClass.where(:year => params[:year], :section => params[:section])[0].materials
    (0..books.count-1).step(1) do |n|
      @s += '<li>'
      @s += '<h2>' + books[n].name + '</h2>'
      @s += '<p class="isbn">Isbn: ' + books[n].isbn + '</p>'
      @s += '<p class="publisher">Editore: ' + books[n].publisher + '</p>'
      @s += '</li>'
    end
    @s += '</ul>'

    @s = @s.html_safe
  end

  def orario
    @s = SchoolClass.where(:year => params[:year], :section => params[:section])[0].timetable
    @s = @s.html_safe
  end


  def tutte_le_classi
    school_classes = SchoolClass.count

    if params.has_key?(:surname)
      surname = params[:surname].capitalize

      school_classes = Teacher.where(:surname => surname)[0].school_classes.count
    end

    if school_classes % 2 != 0
      school_classes = (school_classes / 2) + 1
    else
      school_classes = school_classes / 2
    end

    s = ""
    (0..1).step(1) do |column|


      if (surname)
        old = Teacher.where(:surname => surname)[0].school_classes.order(:year, :section).pluck(:year)[school_classes * column]
      else
        old = SchoolClass.order(:year, :section).pluck(:year)[school_classes * column]
      end

      s += "<div class='column'>"
      (0..school_classes - 1).step(1) do |n|

        if (surname)
          classe = Teacher.where(:surname => surname)[0].school_classes.order(:year, :section).pluck(:year, :section)[school_classes * column + n]
        else
          classe = SchoolClass.order(:year, :section).pluck(:year, :section)[school_classes * column + n]
        end

        if classe
          current = classe[0]
          if current != old
            s += "<br />"
            old = current
          end

          url = classe[0].to_s + "/" + classe[1]
          if (surname)
            s += "<a href='/docente/" + surname + "/"+ url + "'>"
          else
            s += "<a href='/classe/" + url + "'>"
          end
          s += year_to_s(classe[0])
          s += " "
          s += classe[1]
          s += "</a><br />"
        end
      end
      s += "</div>\n"
    end

    return s.html_safe
  end

  # url
  # name
  def classe_aside
    return [[dinamic_path("bacheca"), "Bacheca"],
            [dinamic_path("coordinamento_e_consiglio_di_classe"), "Coordinamento"],
            [dinamic_path("materiale"), "Materiale"],
            [dinamic_path("orario"), "Orario"]]
  end

  helper_method :tutte_le_classi
  helper_method :classe_aside
end
