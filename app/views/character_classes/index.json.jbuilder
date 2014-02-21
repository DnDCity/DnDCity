json.array!(@character_classes) do |character_class|
  json.extract! character_class, :id, :name, :desc, :class_abilities, :hit_die, :BAB_progression, :base_fort_progression, :base_ref_progression, :base_will_progression, :skill_points_per_level
  json.url character_class_url(character_class, format: :json)
end
