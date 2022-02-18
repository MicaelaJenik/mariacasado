class AddCuratorColumnToShows < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :curator, :string
  end
end
