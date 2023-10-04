class CreatePlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :platforms do |t|
      t.string :platform_id, null: false, unique: true
      t.string :name, null: false, unique: true
      t.string :description

      t.timestamps
    end
  end
end
