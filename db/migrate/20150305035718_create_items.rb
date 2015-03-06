class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :next

      t.timestamps null: false
    end
  end
end
