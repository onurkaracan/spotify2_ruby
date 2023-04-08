class RemoveIntegerFromArtist < ActiveRecord::Migration[7.0]
  def change
    remove_column :artists, :integer, :integer
  end
end
