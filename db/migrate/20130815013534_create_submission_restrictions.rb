class CreateSubmissionRestrictions < ActiveRecord::Migration
  def change
    create_table :submission_restrictions do |t|
      t.string :gender
      t.string :ethnicity
      t.string :age
      t.references :magazine, index: true

      t.timestamps
    end
  end
end
