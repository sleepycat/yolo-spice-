class AddStartAndEndDateToMagazines < ActiveRecord::Migration
  def change
    add_column :magazines, :start_date, :date
    add_column :magazines, :end_date, :date
  end
end
