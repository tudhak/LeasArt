class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :status
      t.references :item_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true
      t.decimal :total_price

      t.timestamps
    end
  end
end
