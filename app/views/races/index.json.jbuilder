json.array!(@races) do |race|
  json.extract! race, :id, :name, :desc, :speed, :str, :dex, :con, :int, :wis, :cha, :bonus_feat, :bonus_skill_points, :bonus_skill_points_per_level
  json.url race_url(race, format: :json)
end
