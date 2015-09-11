json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :fname, :lname, :birthday
  json.url teacher_url(teacher, format: :json)
end
