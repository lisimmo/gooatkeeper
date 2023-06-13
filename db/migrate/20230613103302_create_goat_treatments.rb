class CreateGoatTreatments < ActiveRecord::Migration[7.0]
  def change
    create_table :goat_treatments do |t|
      t.timestamps
    end
    add_reference :goat_treatments, :treatment, foreign_key: true
    add_reference :goat_treatments, :goat, foreign_key: true
  end
end
