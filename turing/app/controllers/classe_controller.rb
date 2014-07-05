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
    school_classes = SchoolClass.count / 2
    if SchoolClass.count % 2 != 0
      school_classes += 1
    end

    s = ""
    (0..1).step(1) do |column|
      old = SchoolClass.order(:year, :section).pluck(:year)[school_classes * column]
      s += "<div class='column'>"
      (0..school_classes - 1).step(1) do |n|
        if classe = SchoolClass.order(:year, :section).pluck(:year, :section)[school_classes * column + n]
          current = classe[0]
          if current != old
            s += "<br />"
            old = current
          end

          url = classe[0].to_s + "/" + classe[1]
          s += "<a href='/classe/" + url + "'>"
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
  def aside(year, section)
    class_name = year + "/" + section
    return [["/classe/" + class_name + "/bacheca", "Bacheca"],
            ["/classe/" + class_name + "/coordinamento_e_consiglio_di_classe", "Coordinamento e Consiglio di Classe"],
            ["/classe/" + class_name + "/materiale", "Materiale"],
            ["/classe/" + class_name + "/orario", "Orario"]]
  end

  def year_to_s(year)
    if (year == 1)
      return "Prima"
    elsif(year == 2)
      return "Seconda"
    elsif(year == 3)
      return "Terza"
    elsif(year == 4)
      return "Quarta"
    elsif(year == 5)
      return "Quinta"
    end
  end
end
