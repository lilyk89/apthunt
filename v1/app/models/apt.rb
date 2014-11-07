class Apt < ActiveRecord::Base
	belongs_to :hunt
	has_one :contacts
end
