class CreateReagents < ActiveRecord::Migration
  def change
    create_table :reagents do |t|

      t.string  :reagent_name

      t.string  :manufacturer
      t.string  :catalog_no
      t.string  :lot_no
      t.string  :supplier
      t.string  :order_no
      t.date    :ordered_date


      t.boolean :delivered
      t.date    :delivered_date
      t.decimal :amount_delivered
      t.date    :updated_date #not sure if need this, calculate it maybe?
      #Need to have calculated field - amount_left

      t.date    :expiration_date
      t.string  :item_lot_no
      t.string  :item_cat_no
      t.string  :storage_temp_kit
      t.string  :storage_location

      t.timestamps
    end
  end
end
