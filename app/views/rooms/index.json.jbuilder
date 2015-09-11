json.array!(@rooms) do |room|
  json.extract! room, :id, :number
  json.url room_url(room, format: :json)
end
