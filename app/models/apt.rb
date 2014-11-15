class Apt < ActiveRecord::Base

	belongs_to :hunt
	serialize :contacts

end
