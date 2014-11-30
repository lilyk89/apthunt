class Hunt < ActiveRecord::Base

has_many :apts, inverse_of: :hunt, dependent: :destroy
has_and_belongs_to_many :users
accepts_nested_attributes_for :users,
	:reject_if => :all_blank
accepts_nested_attributes_for :apts,
	:reject_if => :all_blank

end
