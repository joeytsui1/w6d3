class CreateArtwork < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.references :artist, null: false, foreign_key: {to_table: :users}
      t.timestamps
    end

    add_index :artworks, [:title, :artist_id], unique: true
  end
end
