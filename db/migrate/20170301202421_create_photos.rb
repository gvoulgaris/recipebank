class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :dish_id

      t.timestamps

    end
  end
end
