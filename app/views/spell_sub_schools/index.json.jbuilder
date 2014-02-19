json.array!(@spell_sub_schools) do |spell_sub_school|
  json.extract! spell_sub_school, :id, :name, :desc, :spell_school_id
  json.url spell_sub_school_url(spell_sub_school, format: :json)
end
