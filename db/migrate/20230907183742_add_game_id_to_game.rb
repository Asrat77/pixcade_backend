class AddGameIdToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :game_id, :integer
  end
end
