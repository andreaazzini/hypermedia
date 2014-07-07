module AreaRiservataHelper

  def print_all_teacher
    teachers = Teacher.order(:surname).all
    s = "<div class='all_record'>"

    (0..teachers.count - 1).step(1) do |n|
      s += "<div class='record'>"
      s += teachers[n].name + " " + teachers[n].surname
      s += print_teacher_modify(teachers[n].id)
      s += print_teacher_delete(teachers[n].id)
      s += "</div>"
    end

    s += "</div>"

    return s.html_safe
  end

  def print_teacher_delete(id)
    s = "<form name='docente' action='/area_riservata/gestioneRecord' method='post' onsubmit='"
    s += "return confirm('Sei sicuro di voler cancellare il docente?')"
    s += "'>"
    s += "<input type='hidden' name='azione' value='cancella' />"
    s += "<input type='hidden' name='id' value='" + id.to_s + "' />"
    s += "<input type='submit' value='Cancella' />"
    s += "</form>"

    return s.html_safe
  end

  def print_teacher_modify(id)
    s = "<form name='docente' action='/area_riservata/modifica_docente' method='post'>"
    s += "<input type='hidden' name='azione' value='modifica' />"
    s += "<input type='hidden' name='id' value='" + id.to_s + "' />"
    s += "<input type='submit' value='Modifica' />"
    s += "</form>"

    return s.html_safe
  end

end