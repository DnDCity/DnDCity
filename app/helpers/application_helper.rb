module ApplicationHelper

  def link_me obj
    obj && link_to(obj,obj)
  end

  def bonus val
    if val.nil?
      "nil"
    elsif val > 0
      "+#{val}"
    else
      "#{val}"
    end
  end

end
