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
      old = Teacher.order(:surname).all[teachers * column].surname[0]
      s += "<div class='column'>"
      (0..teachers - 1).step(1) do |n|
        if docente = Teacher.order(:surname).all[teachers * column + n]
          current = docente.surname[0]
          if current != old
            s += "<br />"
            old = current
          end

          url = docente.surname.downcase.split(" ").join("_")
          s += "<a href='/docente/" + url + "'>"
          s += docente.surname
          s += " "
          s += docente.name
          s += "</a><br />"
        end
      end
      s += "</div>\n"
    end

    return s.html_safe
  end

end
