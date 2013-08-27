class RemovePasswordHasFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :password_has, :string
    
  end
end
