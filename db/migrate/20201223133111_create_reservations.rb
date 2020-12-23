class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :date,     null: false
      t.datetime :time,     null: false
      t.timestamps
    end
  end
end
