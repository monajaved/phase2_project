class CreateActivityItems < ActiveRecord::Migration
  def change
    create_table :activity_items do |f|
      f.integer :activity_id
      f.integer :item_id

      f.timestamps null: false
    end
  end
end
