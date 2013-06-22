class Girltype < ActiveRecord::Base
  has_and_belongs_to_many :surveys
  attr_accessible :name
end
