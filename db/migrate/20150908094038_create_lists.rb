class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :address
      t.integer :count, default: 1

      t.timestamps null: false
    end
  end
end
