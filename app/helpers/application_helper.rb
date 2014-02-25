module ApplicationHelper

  def link_me obj
    obj && link_to(obj,obj)
  end

  def bab_fraction bab
    case (bab * 4).round
    when 2 then "1/2"
    when 3 then "3/4"
    when 4 then "1"
    else bab
    end
  end

  def save_fraction save
    "1/#{(1/save).round}"
  end

end
