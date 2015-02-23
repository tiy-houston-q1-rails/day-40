class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :inventory, default: 0
      t.integer :price_in_cents, default: 0

      t.timestamps null: false
    end
  end
end
