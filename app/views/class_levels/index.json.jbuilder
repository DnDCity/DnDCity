json.array!(@class_levels) do |class_level|
  json.extract! class_level, :id, :character_id, :character_class_id, :class_level
  json.url class_level_url(class_level, format: :json)
end
