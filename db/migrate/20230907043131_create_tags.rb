class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.integer :tag_id , null: false , unique: true
      t.string :tag_name , null: false

      t.timestamps
    end
  end
end
