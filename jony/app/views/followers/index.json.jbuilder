json.array!(@followers) do |follower|
  json.extract! follower, :id, :typeID, :strength, :chi, :personalHonor, :goldCost, :honorRequirement, :keywords, :description, :focus
  json.url follower_url(follower, format: :json)
end
