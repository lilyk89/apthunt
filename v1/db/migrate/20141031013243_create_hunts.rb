class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.text :name
      t.text :admin
      t.text :description

      t.timestamps
    end
  end
end
