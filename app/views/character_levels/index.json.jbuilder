json.array!(@character_levels) do |character_level|
  json.extract! character_level, :id, :character, :level, :character_class_id, :class_level, :hp
  json.url character_level_url(character_level, format: :json)
end
