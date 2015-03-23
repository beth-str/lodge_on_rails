class Activity_Guest < ActiveRecord::Base
	self.table_name = "activities_guests"

  attr_accessible :activity_id, :guest_id

	belongs_to :activity
	belongs_to :guest

end