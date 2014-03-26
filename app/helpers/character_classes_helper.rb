module CharacterClassesHelper

  def format_bab bab
    result = []
    if bab == 0
      result.push "+#{bab}"
    end
    while bab > 0
      result.push "+#{bab}"
      bab -= 5
    end
    result.join '/'
  end

end
