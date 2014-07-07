module AreaRiservataHelper

  def print_all_teacher
    teachers = Teacher.order(:surname).all
    s = "<div class='all_record'>"

    (0..teachers.count - 1).step(1) do |n|
      s += "<div class='record'>"
      s += teachers[n].name + " " + teachers[n].surname
      s += print_teacher_modify(teachers[n].id)
      s += print_teacher_delete(teachers[n].id)
      s += "</div>\n"
    end

    s += "</div>"

    return s.html_safe
  end

  def print_teacher_delete(id)
    s = form_for(:docente, :url => {:controller => 'area_riservata', :action => 'gestioneRecord'}) do |f|
      s += f.hidden_field(:username, :value => id)
      s += f.hidden_field(:azione, :value => "cancella")
      s += f.submit :Cancella
    end
    return s.html_safe
  end

  def print_teacher_modify(id)
    s = ""
    form_for(:docente, :url => {:controller => 'area_riservata', :action => 'docente'}) do |f|
      s += f.hidden_field(:username, :value => id)
      s += f.hidden_field(:azione, :value => "modifica")
      s += f.submit :Modifica
    end
    return s.html_safe
  end

end