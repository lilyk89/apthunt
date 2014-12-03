class Apt < ActiveRecord::Base

	belongs_to :hunt, inverse_of: :apts
	serialize :contact

  def contact_name
    self.contact[:contact_name]
  end

  # def contact_name=(value)
  #   self.contact[:contact_name] = value
  # end

  def contact_email
    self.contact[:contact_email]
  end

  # def contact_email=(value)
  #   self.contact[:contact_email] = value
  # end

  def contact_phone
    self.contact[:contact_phone]
  end

  # def contact_phone=(value)
  #   self.contact[:contact_phone] = value
  # end

end