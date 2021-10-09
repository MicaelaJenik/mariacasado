class CreateFairs < ActiveRecord::Migration[6.0]
  def change
    create_table :fairs do |t|

      t.string :year
      t.string :month
      t.string :city
      t.string :country
      t.string :details
      t.timestamps
    end
  end
end
