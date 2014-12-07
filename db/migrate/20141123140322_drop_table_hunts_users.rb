class DropTableHuntsUsers < ActiveRecord::Migration
  def change
  	drop_table :hunts_users
  end
end
