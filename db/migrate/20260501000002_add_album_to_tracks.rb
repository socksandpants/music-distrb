# db/migrate/20260501000002_add_album_to_tracks.rb
class AddAlbumToTracks < ActiveRecord::Migration[8.1]
  def change
    add_reference :tracks, :album, null: true, foreign_key: true
  end
end
