# == Schema Information
# Schema version: 20110407011032
#
# Table name: artworks
#
#  id                  :integer(4)      not null, primary key
#  name                :string(255)
#  art                 :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer(4)
#  avatar_updated_at   :datetime
#  email               :string(255)
#  avatar_file         :binary(21474836
#  avatar_small_file   :binary(21474836
#  avatar_thumb_file   :binary(21474836
#

class Artwork < ActiveRecord::Base
  
  has_many :microposts, :dependent => :destroy
  
  has_attached_file :avatar,
                    :storage => :database,
                    :styles => {:thumb => "75x75>", :small => "400x400>"},
                    #:path => ':rails_root/nonpublic/system/:attachment/:id/:style/:basename.:extension',
                    :url => '/:class/:id/:attachment?style=:style'
  default_scope select_without_file_columns_for(:avatar)

end
