class User < ActiveRecord::Base
  attr_accessible :condition, :email, :name, :curation
end
