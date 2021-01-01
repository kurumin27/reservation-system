class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :datetime,     null: false
      t.timestamps
    end
  end
end
