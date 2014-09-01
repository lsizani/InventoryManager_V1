class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      #Mandatory fields for reagent request
      t.string  :requested_by
      t.date    :date_requested
      t.decimal :amount
      t.string  :name

      #Mandatory fields for reagent order form
      t.string  :manufacturer
      t.string  :catalog_number
      t.string  :lot_number
      t.string  :supplier
      t.string  :order_number
      t.date    :date_ordered

      #Mandatory fields for reagent delivery receipt
      t.boolean :delivered
      t.date    :date_delivered
      t.timestamps
    end
  end
end
