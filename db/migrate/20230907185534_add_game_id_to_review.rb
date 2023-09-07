class AddGameIdToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :game_id, :integer
    add_foreign_key :reviews, :games, column: :game_id  end
end
