class Activity < ActiveRecord::Base
	attr_accessible :name, 
									:person_limit, 
									:activity_id,
									:guests_attributes
  
  has_many :assignments
	has_many :guests, through: :assignments

	accepts_nested_attributes_for :assignments, :allow_destroy => true
	accepts_nested_attributes_for :guests, :allow_destroy => true
  
	validates :name, presence: true
	validates :person_limit, presence: true
end