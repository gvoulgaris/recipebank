class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :cousine_id
      t.integer :user_id

      t.timestamps

    end
  end
end
