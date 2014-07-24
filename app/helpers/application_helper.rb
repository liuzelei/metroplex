module ApplicationHelper
  ActionView::Base.default_form_builder = FormHelper::CustomFormBuilder
  
  def page_title
    case params[:action]
    when "edit", "update"
      "修改"
    when "index"
      "列表"
    when "new", "create"
      "添加"
    end
  end
end
