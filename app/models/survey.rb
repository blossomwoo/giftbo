class Survey < ActiveRecord::Base
  belongs_to :user 
  has_and_belongs_to_many :girltypes
  has_and_belongs_to_many :colors
  attr_accessible :anniversary_date, :budget, :dislikes, :dob, :flowers, :name, :phone_num, :ship_address, :ship_city, :ship_zip, :user, :zip
end
