class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false
      t.references :music_record, null: false
      t.datetime :rent_date
      t.datetime :return_date
      t.decimal :price
      t.text :note
      t.boolean :rent, default: false

      t.timestamps
    end
  end
end
