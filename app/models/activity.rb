class Activity < ActiveRecord::Base
  attr_accessible :name, :person_limit

  validates :name, presence: true
	validates :person_limit, presence: true

end
