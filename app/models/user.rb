class User < ActiveRecord::Base
  attr_accessible :condition, :email, :name, :curation

  validates :email, :presence => true
  validates :condition, :presence => true

end
