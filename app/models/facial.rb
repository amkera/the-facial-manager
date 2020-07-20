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


end
