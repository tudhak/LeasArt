class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.text :description
      t.decimal :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
