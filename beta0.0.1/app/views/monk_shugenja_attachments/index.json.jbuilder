json.array!(@monk_shugenja_attachments) do |monk_shugenja_attachment|
  json.extract! monk_shugenja_attachment, :id, :typeID, :goldCost, :keywords, :description, :focus
  json.url monk_shugenja_attachment_url(monk_shugenja_attachment, format: :json)
end
