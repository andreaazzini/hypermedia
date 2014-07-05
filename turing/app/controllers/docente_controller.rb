class DocenteController < ApplicationController
  def curriculum
  end

  def orario_ricevimenti
  end

  def tutti_i_docenti
    teachers = Teacher.count / 2

    n = Teacher.count
    #if params.has_key?("year") && params.has_key?("section")
    if params[:controller]
      year = params[:year]
      section = params[:section]
      n = Teacher.joins(:school_classes).where(school_classes: {year: year, section: section}).count
    end

    if n % 2 != 0
      teachers += 1
    end

    s = ""
    (0..1).step(1) do |column|
      if (year && section)
        old = Teacher.joins(:school_classes).where(school_classes: {year: year, section: section}).order(:surname).pluck(:surname)[teachers * column][0]
      else
        old = Teacher.order(:surname).pluck(:surname)[teachers * column][0]
      end

      s += "<div class='column'>"
      (0..teachers - 1).step(1) do |n|

        if (year && section)
          docente_id = Teacher.joins(:school_classes).where(school_classes: {year: year, section: section}).order(:surname).pluck(:id)[teachers * column + n]
        else
          docente_id = Teacher.order(:surname).pluck(:id)[teachers * column + n]
        end

        if docente_id
          surname = Teacher.find_by_id(docente_id).surname
          current = surname[0]
          if current != old
            s += "<br />"
            old = current
          end

          url = surname.downcase.split(" ").join("_")
          s += "<a href='/docente/" + url + "'>"
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
  def aside(surname)
    return [["/docente/" + surname + "/curriculum", "Curriculum"],
            ["/docente/" + surname + "/orario_ricevimenti", "Orario Ricevimento"]]
  end

end
