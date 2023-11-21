class ChangeTotalPriceDataTypeBookings < ActiveRecord::Migration[7.1]
  def change
    change_column :bookings, :total_price, :float
  end
end
