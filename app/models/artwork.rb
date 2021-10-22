class Artwork < ApplicationRecord
  belongs_to :artist
  has_many_attached :photos

  # include ForestLiana::Collection

  # collection :Company

  # action 'Mark as Live'

end

