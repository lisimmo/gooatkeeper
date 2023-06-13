class CreateGoats < ActiveRecord::Migration[7.0]
  def change
    create_table :goats do |t|
      t.string :name

      t.timestamps
    end
  end
end
