class CreateBundles < ActiveRecord::Migration[7.0]
  def change
    create_table :bundles do |t|
      t.integer :bundle_id, null: false, unique: true
      t.string :bundle_name, null: false
      t.float :bundle_price, null: false
      t.integer :bundle_discount, null: false

      t.timestamps
    end
  end
end
