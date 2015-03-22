class CreateActivitiesGuestsJoin < ActiveRecord::Migration
  
  def up
  	create_table :activities_guests, :id => false do |t|
			t.integer "activity_id"
			t.integer "guest_id"
  	end
  	add_index :activities_guests, ["activity_id", "guest_id"]
  end

  def down
  	drop_table :activities_guests
  end

end