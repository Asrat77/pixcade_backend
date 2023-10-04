class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.string :purchase_id, null: false, unique: true
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.date :purchase_date
      t.float :price

      t.timestamps
    end
  end
end
