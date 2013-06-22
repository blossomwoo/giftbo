class Color < ActiveRecord::Base
  has_and_belongs_to_many :surveys
  attr_accessible :hex_code, :name
end
