class AddRolesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :roles, :string, array: true, default: [], null: false
    add_index :users, :roles, using: "gin"
  end
end
