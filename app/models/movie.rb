class Movie < ApplicationRecord
	belongs_to :user
	has_one_attached :movie_image
	has_many_attached :movie_image_uploads
end
