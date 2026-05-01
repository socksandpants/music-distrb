# app/models/album.rb
class Album < ApplicationRecord
  has_many :tracks, dependent: :nullify
  has_one_attached :featured_image
  has_rich_text :description

  enum :kind, { album: 0, ep: 1, single: 2 }

  KIND_LABELS = { "album" => "Album", "ep" => "EP", "single" => "Single" }.freeze

  validates :name, presence: true

  def kind_label
    KIND_LABELS.fetch(kind)
  end
end
