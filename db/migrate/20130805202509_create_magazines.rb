class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.string :status
      t.string :title
      t.date :readingperiod
      t.string :payment
      t.string :magazineformat
      t.text :submissionrestriction
      t.string :genre
      t.string :publicationcycle
      t.string :submissionlimit
      t.text :submittoaddress

      t.timestamps
    end
  end
end
