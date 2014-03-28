json.array!(@weapons) do |weapon|
  json.extract! weapon, :id, :name, :desc, :user_id, :damages, :damagem, :critical, :rangeincrement, :weight, :isthrowable, :islight, :isonehanded, :istwohanded, :type
  json.url weapon_url(weapon, format: :json)
end
