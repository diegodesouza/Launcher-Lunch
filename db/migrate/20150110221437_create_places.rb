class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.datetime :date_time

      t.timestamps null: false
    end
  end
end
