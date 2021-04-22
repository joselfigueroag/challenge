json.array! @characters do |person|
  json.id person.id
  json.name person.name
  json.image person.image
end