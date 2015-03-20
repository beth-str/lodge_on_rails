class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.references :reservation

      t.timestamps
    end
    add_index :guests, :reservation_id
  end
end
