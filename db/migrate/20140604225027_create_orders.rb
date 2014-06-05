class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id, :volume, :user_stock_id, :volume_remaining
      t.decimal :price, :value, :cost_basis, :capital_gain
      t.string :type
      t.timestamp :created_at, :updated_at
    end
    add_index :orders, :user_stock_id
    add_index :orders, :user_id
    add_index :orders, :type
  end
end
