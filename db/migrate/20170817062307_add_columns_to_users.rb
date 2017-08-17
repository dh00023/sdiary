class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :birth, :integer
    add_column :users, :nickname, :string
    add_column :users, :phone, :string
  end
end
