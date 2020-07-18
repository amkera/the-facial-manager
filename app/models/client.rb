class Client < ApplicationRecord
  has_many :facials
  has_many :estheticians, through: :facials 
end
