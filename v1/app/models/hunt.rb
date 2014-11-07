class Hunt < ActiveRecord::Base
	has_many :apts
	accepts_nested_attributes_for :apts
	has_and_belongs_to_many :users
end
