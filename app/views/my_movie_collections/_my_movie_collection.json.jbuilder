json.extract! my_movie_collection, :id, :title, :rating, :year, :director, :lenght, :description, :created_at, :updated_at
json.url my_movie_collection_url(my_movie_collection, format: :json)
