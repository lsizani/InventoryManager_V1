class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|

      t.string  :requested_by
      t.date    :date_requested
      t.decimal :amount
      t.string  :name
      t.string  :manufacturer
      t.string  :catalog_number
      t.string  :lot_number
      t.string  :supplier
      t.string  :order_number
      t.date    :date_ordered
      t.boolean :delivered
      t.date    :date_delivered
      t.timestamps
    end
  end
end
