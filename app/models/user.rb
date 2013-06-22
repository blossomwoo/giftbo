class User < ActiveRecord::Base
  has_many :surveys
  attr_accessible :email, :name, :password
end
