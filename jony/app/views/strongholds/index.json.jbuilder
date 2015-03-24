json.array!(@strongholds) do |stronghold|
  json.extract! stronghold, :id, :typeID, :provinceStrength, :familyHonor, :goldProduction, :keywords, :description, :clan
  json.url stronghold_url(stronghold, format: :json)
end
