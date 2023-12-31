class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :user_id, null: false, unique: true
      t.string :name, null: false
      t.string :email, null: false, unique: true

      t.timestamps
    end
  end
end
