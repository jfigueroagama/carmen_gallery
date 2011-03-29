class AddEmailToArtworks < ActiveRecord::Migration
  def self.up
    add_column :artworks, :email, :string
  end

  def self.down
    remove_column :artworks, :email
  end
end
