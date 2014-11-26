class Hunt < ActiveRecord::Base

has_many :apts, dependent: :destroy
has_and_belongs_to_many :users

end
