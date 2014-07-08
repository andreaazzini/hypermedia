module AreaRiservataHelper

  def print_all_teacher
    teachers = Teacher.order(:surname).all
    s = "<div class='all_record'>"

    (0..teachers.count - 1).step(1) do |n|
      s += "<div class='record'>"
      s += teachers[n].name + " " + teachers[n].surname
      s += print_teacher_modify(teachers[n].id)
      s += "</div>\n"
    end

    s += "</div>"

    return s.html_safe
  end

  def print_teacher_modify(id)
    s = "<a href='/area_riservata/docente/modifica/" + id.to_s + "'>Modifica</a>"
    return s.html_safe
  end

  def print_all_school_class
    school_class = SchoolClass.order(:year, :section).all
    s = "<div class='all_record'>"

    (0..school_class.count - 1).step(1) do |n|
      s += "<div class='record'>"
      s += year_to_s(school_class[n].year) + " " + school_class[n].section
      s += print_school_class_modify(school_class[n].id)
      s += "</div>\n"
    end

    s += "</div>"

    return s.html_safe
  end

  def print_school_class_modify(id)
    s = "<a href='/area_riservata/classe/modifica/" + id.to_s + "'>Modifica</a>"
    return s.html_safe
  end

end