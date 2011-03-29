class AddAttachmentsBlobAvatarToArtwork < ActiveRecord::Migration
  def self.up
    execute 'ALTER TABLE artworks ADD COLUMN avatar_file LONGBLOB'
    execute 'ALTER TABLE artworks ADD COLUMN avatar_small_file LONGBLOB'
    execute 'ALTER TABLE artworks ADD COLUMN avatar_thumb_file LONGBLOB'
  end

  def self.down
    remove_column :artworks, :avatar_file
    remove_column :artworks, :avatar_small_file
    remove_column :artworks, :avatar_thumb_file
  end
end
