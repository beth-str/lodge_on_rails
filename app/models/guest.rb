class Guest < ActiveRecord::Base
  attr_accessible :age, 
                  :first_name, 
                  :gender, 
                  :last_name, 
                  :reservation_id, 
                  :guest_id, 
                  :assignments_attributes
                  :activity_ids

  belongs_to :reservation
  
  has_many :assignments
	has_many :activities, through: :assignments

  accepts_nested_attributes_for :assignments
  accepts_nested_attributes_for :activities, :allow_destroy => true
  accepts_nested_attributes_for :reservation

  validates :first_name, presence: true
	validates :last_name, presence: true
	validates :age, presence: true
	validates :gender, presence: true
end