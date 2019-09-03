class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.float :latitude
      t.float :longitude
      t.text :address

      t.timestamps
    end
  end
end
