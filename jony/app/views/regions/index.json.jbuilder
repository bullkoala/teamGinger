json.array!(@regions) do |region|
  json.extract! region, :id, :typeID, :keywords, :description
  json.url region_url(region, format: :json)
end
