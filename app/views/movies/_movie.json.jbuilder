json.extract! movie, :id, :title, :year, :director, :lenght, :rating, :description, :watched, :created_at, :updated_at
json.url movie_url(movie, format: :json)
