class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :year
      t.text :about
      t.text :description

      t.timestamps
    end
  end
end
