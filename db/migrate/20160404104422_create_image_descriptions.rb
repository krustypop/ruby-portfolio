class CreateImageDescriptions < ActiveRecord::Migration
  def change
    create_table :image_descriptions do |t|
      t.string :title
      t.text :description
      t.integer :width
      t.integer :height
      t.integer :image_id

      t.timestamps null: false
    end
  end
end
