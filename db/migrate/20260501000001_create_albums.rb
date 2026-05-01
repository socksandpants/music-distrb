# db/migrate/20260501000001_create_albums.rb
class CreateAlbums < ActiveRecord::Migration[8.1]
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.integer :kind, null: false, default: 0

      t.timestamps
    end
  end
end
