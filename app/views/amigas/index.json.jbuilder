json.array!(@amigas) do |amiga|
  json.extract! amiga, :id, :name, :description, :picture
  json.url amiga_url(amiga, format: :json)
end
