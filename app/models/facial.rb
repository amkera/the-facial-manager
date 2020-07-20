class Facial < ApplicationRecord
  belongs_to :client
  belongs_to :esthetician

  validates :facial_date, presence: true
  validates :facial_time, presence: true

  validates :client_id, presence: true
  validates :esthetician_id, presence: true


end
