class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :game_id, null: false, foreign_key: true
      t.integer :rating_value, null: false

      t.timestamps
    end
  end
end
