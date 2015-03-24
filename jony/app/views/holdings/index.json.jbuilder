json.array!(@holdings) do |holding|
  json.extract! holding, :id, :typeID, :goldCost, :goldProduction, :honorProduction, :keywords, :description
  json.url holding_url(holding, format: :json)
end
