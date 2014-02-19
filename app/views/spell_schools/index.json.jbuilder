json.array!(@spell_schools) do |spell_school|
  json.extract! spell_school, :id, :name, :desc
  json.url spell_school_url(spell_school, format: :json)
end
