json.array!(@image_descriptions) do |image_description|
  json.extract! image_description, :id, :title, :description, :width, :height
  json.url image_description_url(image_description, format: :json)
end
