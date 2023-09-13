class CreateBundleItems < ActiveRecord::Migration[7.0]
  def change
    create_table :bundle_items do |t|
      t.string :bundleItemID, null: false, unique: true
      t.references :bundle, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
