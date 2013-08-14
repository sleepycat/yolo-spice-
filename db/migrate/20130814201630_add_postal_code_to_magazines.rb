class AddPostalCodeToMagazines < ActiveRecord::Migration
  def change
    add_column :magazines, :postal_code, :string
  end
end
