module AreaRiservataHelper

  def print_all_teacher
    teachers = Teacher.order(:surname).all
    s = "<div class='all_record'>"

    (0..teachers.count - 1).step(1) do |n|
      s += ""
    end

    s += "</div>"

    return s.html_safe
  end

  def print_teacher_delete
    s = ""
    form_for(:docente, :url => {:controller => 'area_riservata', :action => 'gestioneRecord'}) do |f|
      s += f.hidden_field_tag(:username, session[:user])
      s += f.hidden_field_tag(:azione, "cancella")
      s += f.submit :Cancella
    end
    return s.html_safe
  end

  def print_teacher_modify
    s = ""
    form_for(:docente, :url => {:controller => 'area_riservata', :action => 'modifica_docente'}) do |f|
      s += f.hidden_field_tag(:username, session[:user])
      s += f.hidden_field_tag(:azione, "modifica")
      s += f.submit :Modifica
    end
    return s.html_safe
  end

end
