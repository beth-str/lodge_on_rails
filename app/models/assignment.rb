class Assignment < ActiveRecord::Base

	attr_accessible :assignments_attributes, :guests_attributes, :activity_ids, :guest_ids, :activity_id, :guest_id

	belongs_to :activity
	belongs_to :guest

end