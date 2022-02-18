class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.integer :year
      t.integer :height
      t.integer :width
      t.integer :depth
      t.string :technique
      t.text :about
      t.text :description
      t.string :period

      t.timestamps
    end
  end
end
