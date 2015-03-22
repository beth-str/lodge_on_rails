class Guest < ActiveRecord::Base
  attr_accessible :age, :first_name, :gender, :last_name, :reservation_id

  belongs_to :reservation
  has_many :activities

  accepts_nested_attributes_for :activities, :allow_destroy => true
  accepts_nested_attributes_for :reservation

  validates :first_name, presence: true
	validates :last_name, presence: true
	validates :age, presence: true
	validates :gender, presence: true
end