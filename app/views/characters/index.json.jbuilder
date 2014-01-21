json.array!(@characters) do |character|
  json.extract! character, :id, :name, :user_id, :base_str, :base_dex, :base_con, :base_int, :base_wis, :base_cha
  json.url character_url(character, format: :json)
end
