class CreateApts < ActiveRecord::Migration
  def change
    create_table :apts do |t|
      t.text :link
      t.text :address
      t.float :num_beds
      t.float :num_baths
      t.float :price
      t.text :description
      t.string :status
      t.string :opinions

      t.timestamps
    end
  end
end
