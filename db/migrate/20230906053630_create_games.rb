class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :game_id , null: false , unique: true
      t.string :name , null: false
      t.decimal :price, null: false
      t.decimal :discounted_price , null: false
      t.date :release_date, null: false
      t.string :platform, null: false
  
      t.references :user, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
