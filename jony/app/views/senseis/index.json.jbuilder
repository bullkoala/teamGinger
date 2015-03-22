json.array!(@senseis) do |sensei|
  json.extract! sensei, :id, :typeID, :provinceStrength, :goldProduction, :familyHonor, :keywords, :description
  json.url sensei_url(sensei, format: :json)
end
