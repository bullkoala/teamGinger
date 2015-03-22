json.array!(@types) do |type|
  json.extract! type, :id, :typeName
  json.url type_url(type, format: :json)
end
