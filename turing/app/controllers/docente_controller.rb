class DocenteController < ApplicationController
  def curriculum
  end

  def orario_ricevimenti
  end

  def tutti_i_docenti
    teachers = Teacher.count / 2
    if Teacher.count % 2 != 0
      teachers += 1
    end

    s = ""
    (0..1).step(1) do |column|
      old = Teacher.order(:surname).pluck(:surname)[teachers * column][0]
      s += "<div class='column'>"
      (0..teachers - 1).step(1) do |n|
        if docente_id = Teacher.order(:surname).pluck(:id)[teachers * column + n]
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
