class ChangePriceDataTypeItem < ActiveRecord::Migration[7.1]
  def change
    change_column :items, :price, :float
  end
end
