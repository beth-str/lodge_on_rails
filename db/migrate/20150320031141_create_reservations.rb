class CreateReservations < ActiveRecord::Migration
  def up
    create_table :reservations do |t|
      t.string :contact
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :phone
      t.integer :no_adults
      t.integer :no_children
      t.date :arrival_date
      t.date :departure_date
      t.string :status
      t.text :additional_info

      t.timestamps
    end
  end

  def down
    drop_table :reservations
  end
end