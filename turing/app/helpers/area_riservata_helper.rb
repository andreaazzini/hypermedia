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
    a = form_for(:docente, :url => {:controller => 'area_riservata', :action => 'gestioneRecord'}) do |f|
      a += f.hidden_field(:id, :value => id)
      a += f.hidden_field(:azione, :value => "cancella")
      a += f.submit(:Cancella)
    end

    s = a.html_safe
    return s
  end

  def print_teacher_modify(id)
    a = form_for(:docente, :url => {:controller => 'area_riservata', :action => 'docente'}) do |f|
      a += f.hidden_field(:id, :value => id)
      a += f.hidden_field(:azione, :value => "modifica")
      a += f.submit(:Modifica)
    end

    s = a.html_safe
    return s
  end

end