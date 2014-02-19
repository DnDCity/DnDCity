json.array!(@feat_types) do |feat_type|
  json.extract! feat_type, :id, :name, :desc
  json.url feat_type_url(feat_type, format: :json)
end
