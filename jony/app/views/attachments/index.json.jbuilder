json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :typeID, :strength, :chi, :goldCost, :keywords, :description, :focus
  json.url attachment_url(attachment, format: :json)
end
