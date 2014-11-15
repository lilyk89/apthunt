class CreateApts < ActiveRecord::Migration
  def change
    create_table :apts do |t|
      t.text :link
      t.text :address
      t.integer :num_beds
      t.integer :num_baths
      t.integer :price
      t.text :description
      t.text :status
      t.text :opinions
      t.integer :hunt_id
      t.text :contact

      t.timestamps
    end
  end
end
