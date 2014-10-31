class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.text :name
      t.textadmin :description

      t.timestamps
    end
  end
end
