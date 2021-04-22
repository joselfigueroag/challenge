json.extract! @movie_series, :title, :image, :create_date, :gender, :qualification
json.characters @movie_series.characters.map(&:name)
