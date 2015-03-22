json.array!(@winds) do |wind|
  json.extract! wind, :id, :typeID, :keywords, :description
  json.url wind_url(wind, format: :json)
end
