class Activity < ActiveRecord::Base
	attr_accessible :name, 
									:person_limit, 
									:activity_id,
									:activities_guests_attributes
  
  has_many :activities_guests
	has_many :guests, 
					 :through => :activities_guests

	accepts_nested_attributes_for :activities_guests, :allow_destroy => true
	accepts_nested_attributes_for :guests, :allow_destroy => true
  
	validates :name, presence: true
	validates :person_limit, presence: true
end