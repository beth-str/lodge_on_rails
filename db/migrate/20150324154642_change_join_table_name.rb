class ChangeJoinTableName < ActiveRecord::Migration
  def up
  	rename_table :activities_guests, :assignments
  end

  def down
  	rename_table :assignments, :activities_guests
  end
end
