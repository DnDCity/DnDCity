json.array!(@spell_component_types) do |spell_component_type|
  json.extract! spell_component_type, :id, :name, :key, :desc
  json.url spell_component_type_url(spell_component_type, format: :json)
end
