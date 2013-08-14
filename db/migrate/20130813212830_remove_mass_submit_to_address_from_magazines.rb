class RemoveMassSubmitToAddressFromMagazines < ActiveRecord::Migration
  def change
    remove_column :magazines, :submittoaddress, :string
  end
end
