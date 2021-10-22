class CreateFairArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :fair_artists do |t|
      t.references :artist, foreign_key: true
      t.references :fair,  foreign_key: true
      t.timestamps
    end
  end
end
