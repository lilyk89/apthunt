class CreateHuntsUsersTable < ActiveRecord::Migration
  def change
    create_table :hunts_users do |t|
      t.belongs_to :hunt
      t.belongs_to :user
    end
  end
end
