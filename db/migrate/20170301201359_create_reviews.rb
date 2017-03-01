class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :dish_id
      t.string :stars
      t.integer :star_id
      t.integer :comment_id

      t.timestamps

    end
  end
end
