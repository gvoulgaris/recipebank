class CreateCousines < ActiveRecord::Migration
  def change
    create_table :cousines do |t|

      t.timestamps

    end
  end
end
