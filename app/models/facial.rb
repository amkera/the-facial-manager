class Facial < ApplicationRecord
  belongs_to :client
  belongs_to :esthetician

  validates :facial_date, presence: true
  validates :facial_time, presence: true
  validate :facial_date_cannot_be_in_the_past

  def facial_date_cannot_be_in_the_past
    errors.add(:facial_date, "can't be in the past") if
      !facial_date.blank? and facial_date < Date.today
  end

  validates :client_id, presence: true
  validates :esthetician_id, presence: true

  def client_full_name=(full_name)
    self.client = Client.find_or_create_by(full_name: full_name)
  end

  def client_full_name
    self.client ? self.client.full_name : nil
  end

  def esthetician_email=(email)
    self.esthetician = Esthetician.find_or_create_by(email: email)
  end

  def esthetician_email
    self.esthetician ? self.esthetician.email : nil
  end




end
