class AddContactIdToApts < ActiveRecord::Migration
  def change
  add_column :apts, :contact_id, :integer
  end
end
