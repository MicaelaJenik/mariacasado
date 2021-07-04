class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :subtitle
      t.integer :year
      t.string :place
      t.string :city
      t.string :country
      t.string :about
      t.string :details

      t.timestamps
    end
  end
end
