class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :account_id
      t.string :status
      t.integer :order_number
      t.decimal :sub_total
      t.decimal :tax
      t.decimal :total_price
      t.timestamps
    end
  end
end
