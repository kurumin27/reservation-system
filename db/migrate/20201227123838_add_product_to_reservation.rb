class AddProductToReservation < ActiveRecord::Migration[6.0]
  def change
    add_reference :reservations, :product, null: false, foreign_key: true
  end
end
