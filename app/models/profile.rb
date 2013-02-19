class Profile < ActiveRecord::Base
  attr_accessible :password, :email, :password_confirmation
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_uniqueness_of :email, :on => :create
end
