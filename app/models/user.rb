class User < ActiveRecord::Base
  attr_accessible :condition, :email, :name, :curation
  #has_secure_password, :on => :passcreate

  validates_presence_of :password, :on => :passcreate

  validates :email, :presence => true
  validates :email, :uniqueness => true
  validates :condition, :presence => true

end
