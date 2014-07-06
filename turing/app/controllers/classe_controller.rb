class ClasseController < ApplicationController
  def bacheca
  end

  def coordinamento_e_consiglio_di_classe
  end

  def materiale
  end

  def orario
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
        old = Teacher.where(:surname => surname)[0].school_classes.order(:year, :section).pluck(:year)[0]
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

  helper_method :tutte_le_classi

  # url
  # name
  def aside(year, section)
    class_name = year + "/" + section
    return [["/classe/" + class_name + "/bacheca", "Bacheca"],
            ["/classe/" + class_name + "/coordinamento_e_consiglio_di_classe", "Coordinamento e Consiglio di Classe"],
            ["/classe/" + class_name + "/materiale", "Materiale"],
            ["/classe/" + class_name + "/orario", "Orario"]]
  end
end
