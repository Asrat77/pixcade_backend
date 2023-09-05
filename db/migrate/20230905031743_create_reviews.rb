class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.datetime :posted_time, null: false, default: DateTime.now
      t.string :review_content, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
