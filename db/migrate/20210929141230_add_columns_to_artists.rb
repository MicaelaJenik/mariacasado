class AddColumnsToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :instagram_url, :string
    add_column :artists, :facebook_url, :string
    add_column :artists, :personal_web_url, :string
  end
end
