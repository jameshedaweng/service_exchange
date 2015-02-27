module ApplicationHelper
  def back_link
    link_to "< Back", :back, class:"btn btn-default"
  end

  def home_link
    link_to content_tag(:i, content_tag(:span, " Home"), class: "fa fa-home"), root_path, class: "btn btn-default"
  end
end
