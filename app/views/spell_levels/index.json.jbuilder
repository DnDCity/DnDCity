json.array!(@spell_levels) do |spell_level|
  json.extract! spell_level, :id, :spell_id, :character_class_id, :level
  json.url spell_level_url(spell_level, format: :json)
end
