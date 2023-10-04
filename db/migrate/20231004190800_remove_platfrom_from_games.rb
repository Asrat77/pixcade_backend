class RemovePlatfromFromGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :platform
  end
end
