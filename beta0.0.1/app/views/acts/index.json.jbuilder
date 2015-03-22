json.array!(@acts) do |act|
  json.extract! act, :id, :typeID, :goldCost, :keywords, :description, :focus
  json.url act_url(act, format: :json)
end
