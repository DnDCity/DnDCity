json.array!(@consumable_items) do |consumable_item|
  json.extract! consumable_item, :id, :name, :desc, :effects, :weight, :cost
  json.url consumable_item_url(consumable_item, format: :json)
end
