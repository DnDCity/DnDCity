json.array!(@sizes) do |size|
  json.extract! size, :id, :name, :desc
  json.url size_url(size, format: :json)
end
