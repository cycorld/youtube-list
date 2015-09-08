class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.integer :list_id, null: false
      t.string :url, null: false
      t.integer :later, default: 1

      t.timestamps null: false
    end
  end
end
