json.array!(@character_classes) do |character_class|
  json.extract! character_class, :id, :name, :desc
  json.url character_class_url(character_class, format: :json)
end
