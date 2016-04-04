json.array!(@images) do |image|
  json.extract! image, :id, :url, :date_creation, :visible, :deleted, :date_deleted, :category_id
  json.url image_url(image, format: :json)
end
