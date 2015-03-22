json.array!(@personalities) do |personality|
  json.extract! personality, :id, :typeID, :strength, :chi, :goldCost, :familyHonorRequirement, :personalHonor, :keywords, :description, :clan
  json.url personality_url(personality, format: :json)
end
