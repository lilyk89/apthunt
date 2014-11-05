class AddHuntIdToApt < ActiveRecord::Migration
  def change
  	add_column :apts, :hunt_id, :integer
  end
end
