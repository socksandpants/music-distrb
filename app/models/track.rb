# app/models/track.rb
class Track < ApplicationRecord
  # this tells us that the Track model requires a name to be inserted
  belongs_to :album, optional: true
  has_one_attached :featured_image
  has_one_attached :featured_track
  has_rich_text :description
  validates :name, presence: true
end
