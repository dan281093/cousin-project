class ChangeTimeFieldInBooking < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :time, :datetime
  end
end
