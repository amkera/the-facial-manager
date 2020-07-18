class Facial < ApplicationRecord
  belongs_to :client
  belongs_to :esthetician
end
