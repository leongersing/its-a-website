# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def render_flash_messages
    msg = []
    msg << content_tag(:div, flash[:notice], :class=>"notice")    if flash[:notice]
    msg << content_tag(:div, flash[:success], :class=>"success")  if flash[:success]
    msg << content_tag(:div, flash[:error], :class=>"error")      if flash[:error]
    msg.join("\n")
  end
  
end
