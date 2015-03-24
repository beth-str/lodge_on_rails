class Assignment < ActiveRecord::Base
	
  attr_accessible :activity_id, :guest_id

	belongs_to :activity
	belongs_to :guest

end