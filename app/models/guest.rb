class Guest < ActiveRecord::Base
  belongs_to :reservation
  attr_accessible :age, :first_name, :gender, :last_name

  validates :first_name, presence: true
	validates :last_name, presence: true
	validates :age, presence: true
	validates :gender, presence: true

end
