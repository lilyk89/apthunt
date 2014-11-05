class Apt < ActiveRecord::Base
	belongs_to :hunt
	has_and_belongs_to_many :contacts
end
