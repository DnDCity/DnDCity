json.array!(@feats) do |feat|
  json.extract! feat, :id, :name, :desc, :feat_type_id, :modifiers, :prerequisites, :benefit
  json.url feat_url(feat, format: :json)
end
