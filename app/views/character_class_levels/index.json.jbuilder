json.array!(@character_class_levels) do |character_class_level|
  json.extract! character_class_level, :id, :character_id, :character_class_id, :class_level
  json.url character_class_level_url(character_class_level, format: :json)
end
