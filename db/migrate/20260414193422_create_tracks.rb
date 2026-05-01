# db/migrate/20260414193422_create_tracks.rb
class CreateTracks < ActiveRecord::Migration[8.1]
  def change
    create_table :tracks do |t|
      # This was created with "$ bin/rails console"
      t.string :name

      t.timestamps
    end
  end
end
