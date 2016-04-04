class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.datetime :last_connection

      t.timestamps null: false
    end
  end
end
