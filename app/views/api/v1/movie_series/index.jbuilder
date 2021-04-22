json.array! @movie_series do |film|
  json.id film.id
  json.title film.title
  json.image film.image
  json.create_date film.create_date
end 