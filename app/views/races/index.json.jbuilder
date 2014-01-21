json.array!(@races) do |race|
  json.extract! race, :id, :name, :desc
  json.url race_url(race, format: :json)
end
