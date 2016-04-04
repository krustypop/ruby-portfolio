class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.datetime :date_creation
      t.boolean :visible
      t.boolean :deleted
      t.datetime :date_deleted
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
