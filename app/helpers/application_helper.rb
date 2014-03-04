module ApplicationHelper

  def link_me obj
    obj && link_to(obj,obj)
  end

end
