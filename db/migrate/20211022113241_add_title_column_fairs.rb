class AddTitleColumnFairs < ActiveRecord::Migration[6.0]
  def change
    add_column :fairs, :title, :string
  end
end
