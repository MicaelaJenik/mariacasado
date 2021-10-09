class Fair < ApplicationRecord
  has_many :fair_artists
  has_many :artist, through: :fair_artists
  has_many_attached :photos
end

