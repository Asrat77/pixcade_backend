class CreateFeatureds < ActiveRecord::Migration[7.0]
  def change
    create_table :featureds do |t|
      t.string :feature_id
      t.references :game, null: false, foreign_key: true
      t.date :valid_from
      t.date :valid_until

      t.timestamps
    end
  end
end
