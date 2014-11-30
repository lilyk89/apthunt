class Apt < ActiveRecord::Base

	belongs_to :hunt, inverse_of: :apts
	serialize :contacts

end
