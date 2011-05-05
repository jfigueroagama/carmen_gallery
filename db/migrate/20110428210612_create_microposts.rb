class CreateMicroposts < ActiveRecord::Migration
  def self.up
    create_table :microposts do |t|
      t.string :name
      t.string :email
      t.string :content
      t.integer :artwork_id

      t.timestamps
    end
    add_index :microposts, :artwork_id
  end

  def self.down
    drop_table :microposts
  end
end
