json.array!(@categories) do |category|
  json.extract! category, :id, :label, :date_creation
  json.url category_url(category, format: :json)
end
