class AddArtistToItem < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :artist, :string
  end
end
