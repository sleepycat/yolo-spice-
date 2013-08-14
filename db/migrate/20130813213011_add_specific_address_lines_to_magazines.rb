class AddSpecificAddressLinesToMagazines < ActiveRecord::Migration
  def change
    add_column :magazines, :address_number, :integer
    add_column :magazines, :unit_number, :integer
    add_column :magazines, :street_name, :string
    add_column :magazines, :city_name, :string
    add_column :magazines, :province_name, :string
    add_column :magazines, :country_name, :string
  end
end
