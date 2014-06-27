module ApplicationHelper

  def check_li_active(page_title, li_title)
    if page_title == li_title
      return " class=active";
    else
      return "";
    end
  end
end
