json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :name, :reference, :desc
  json.url campaign_url(campaign, format: :json)
end
