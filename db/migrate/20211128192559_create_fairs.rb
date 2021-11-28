class CreateFairs < ActiveRecord::Migration[6.0]
  def change
    create_table :fairs do |t|
      t.string :title
      t.string :location
      t.integer :year
      t.integer :mmonth
      t.string :catalogue
      t.string :gacetilla

      t.timestamps
    end
  end
end
