class Movie < ApplicationRecord
  has_many :ratings
  # has_many :users, through: :ratings
  has_many :genres, through: :movie_genres
end
