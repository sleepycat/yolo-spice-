class RemoveWeirdColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :password_salt, :string
    remove_column :users, :password, :string
  end
end
