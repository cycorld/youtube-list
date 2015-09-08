class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :address
      t.integer :count

      t.timestamps null: false
    end
  end
end
