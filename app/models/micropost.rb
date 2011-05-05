# == Schema Information
# Schema version: 20110428210612
#
# Table name: microposts
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  email      :string(255)
#  content    :string(255)
#  artwork_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Micropost < ActiveRecord::Base
  attr_accessible :name, :email, :content
  
  belongs_to :artwork
  
  validates :content, :presence => true, :length => {:maximum => 140}
  validates :artwork_id, :presence => true
  
  default_scope :order => 'microposts.created_at DESC'
  
end
