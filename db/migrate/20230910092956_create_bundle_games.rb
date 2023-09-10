class CreateBundleGames < ActiveRecord::Migration[7.0]
  def change
    create_table :bundle_games do |t|
      t.references :game_id, null: false, unique: true, foreign_key: true
      t.references :bundle_id, null: false, unique: true, foreign_key: true

      t.timestamps
    end
  end
end
