class CreateWishlists < ActiveRecord::Migration[7.0]
  def change
    create_table :wishlists do |t|
      t.integer :wishlist_id, null: false, unique: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
