json.array!(@class_skills) do |class_skill|
  json.extract! class_skill, :id, :character_class_id, :skill_id, :subject
  json.url class_skill_url(class_skill, format: :json)
end
