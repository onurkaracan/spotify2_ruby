class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :country
      t.text :about
      t.string :monthly_listener
      t.string :integer, :default => 0

      t.timestamps
    end
  end
end
