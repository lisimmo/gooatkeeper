class AddDobToGoat < ActiveRecord::Migration[7.0]
  def change
    add_column :goats, :gid, :integer
    add_column :goats, :dob, :datetime, null: false, default: Time.zone.now
    add_column :goats, :primary_color, :string
    add_column :goats, :secondary_color, :string
    add_column :goats, :breed_id, :integer
    add_index :goats, :breed_id
  end
end
