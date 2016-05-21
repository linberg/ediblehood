class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|

      t.timestamps null: false
      t.string :title, null: false
      t.string :image_url
      t.string :email
      t.decimal :longitude, null: false
      t.decimal :latitude, null: false
      t.string :growing_status
      t.string :permission
      t.string :notes

    end
  end
end
