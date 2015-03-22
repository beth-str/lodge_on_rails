class Activity < ActiveRecord::Base
	attr_accessible :name, :person_limit
  
	has_many :guests

	accepts_nested_attributes_for :guests, :allow_destroy => true
  
	validates :name, presence: true
	validates :person_limit, presence: true
end