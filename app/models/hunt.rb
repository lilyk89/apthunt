class Hunt < ActiveRecord::Base

has_many :apts
has_and_belongs_to_many :users

end
