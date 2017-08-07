class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string :category
      t.text :memo

      t.timestamps null: false
    end
  end
end
