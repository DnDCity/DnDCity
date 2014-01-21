json.array!(@spells) do |spell|
  json.extract! spell, :id, :name, :desc
  json.url spell_url(spell, format: :json)
end
