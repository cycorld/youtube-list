class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.integer :list_id
      t.string :url
      t.integer :later

      t.timestamps null: false
    end
  end
end
