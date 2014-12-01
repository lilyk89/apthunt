class Apt < ActiveRecord::Base

	# class Contact
	# 	include ActiveModel::Conversion
	# 	extend ActiveModel::Naming

	# 	attr_accessor :name, :email, :phone

	# 	def persisted?; true end

	# 	def id; 1 end

	# 	def self.load json
	# 		obj = self.new
	# 		unless json.nil?
	# 			attrs = JSON.parse json
	# 			obj.name = attrs['name']
	# 			obj.email = attrs['email']
	# 			obj.phone = attrs['phone']
	# 		end
	# 		obj
	# 	end

	# 	def self.dump obj
	# 		obj.to_json if obj
	# 	end

	# end

	belongs_to :hunt, inverse_of: :apts
	serialize :contact
  def name
    self.contact[:name]
  end

  def name=(value)
    self.contact[:name] = value
  end

  def email
    self.contact[:email]
  end

  def email=(value)
    self.contact[:email] = value
  end

  def phone
    self.contact[:phone]
  end

  def phone=(value)
    self.contact[:phone] = value
  end

end
