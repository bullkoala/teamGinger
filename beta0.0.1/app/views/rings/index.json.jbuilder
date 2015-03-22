json.array!(@rings) do |ring|
  json.extract! ring, :id, :typeID, :keywords, :description, :focus
  json.url ring_url(ring, format: :json)
end
