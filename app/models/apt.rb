class Apt < ActiveRecord::Base

	belongs_to :hunt, inverse_of: :apts
	serialize :contact

  validates :address, presence: true
  validates :num_beds, presence: true, numericality: true
  validates :num_baths, presence: true, numericality: true
  validates :price, presence: true, numericality: { only_integer: true}
  validates :contact_email, format: /@/
  validates :status, inclusion: { in: %w(Vetoed Taken Open Contacted Seen Applied),
    message: "{%value} is not valid"}

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