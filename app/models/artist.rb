class Artist < ApplicationRecord
  has_many :artworks
  has_many :fair_artists
  has_many_attached :photos
end
