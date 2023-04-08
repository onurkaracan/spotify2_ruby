class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :name, null:false
      t.date :release_date, null:false
      t.text :album_cover
      t.string :copyright

      t.timestamps
    end
  end
end
