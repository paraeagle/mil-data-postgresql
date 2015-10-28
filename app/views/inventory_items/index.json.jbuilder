json.array!(@inventory_items) do |inventory_item|
  json.extract! inventory_item, :id, :part_name, :failure_mode, :severity, :current_control, :recommended_action
  json.url inventory_item_url(inventory_item, format: :json)
end
