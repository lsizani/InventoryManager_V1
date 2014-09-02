class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      #Mandatory fields for reagent request
      t.string  :requested_by
      t.date    :requested_date
      t.decimal :amount_requested
      t.string  :reagent_name

      #Mandatory fields for reagent order form
      t.string  :manufacturer
      t.string  :catalog_no
      t.string  :lot_no
      t.string  :supplier
      t.string  :order_no
      t.date    :ordered_date

      #Mandatory fields for reagent delivery receipt
      t.boolean :delivered
      t.date    :delivery_date
      t.decimal :amount_delivered

      t.timestamps
    end
  end
end
