class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :status
      t.text :shipping_address
      t.text :billing_address
      t.float :total_price

      t.timestamps
    end
  end
end
