class Guest < ActiveRecord::Base
  belongs_to :reservation
  attr_accessible :age, :first_name, :gender, :last_name
end
