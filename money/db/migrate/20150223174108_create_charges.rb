class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :product_id
      t.string :stripe_charge_id

      t.timestamps null: false
    end
  end
end
