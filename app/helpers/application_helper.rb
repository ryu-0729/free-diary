module ApplicationHelper

  def page_title
    title = "free-diary"
    title = @page_title + "-" + title if @page_title
    title
  end
end
