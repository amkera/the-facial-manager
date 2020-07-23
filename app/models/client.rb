class Client < ApplicationRecord
  has_many :facials
  has_many :estheticians, through: :facials

  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :email, presence: true
  validates :email, uniqueness: true

  validates :phone_number, presence: true, length: {is: 10}

  def full_name
    self.first_name.capitalize + " " + self.last_name.capitalize
  end

  def self.search(query)
    if query.present?
      #where('FIRST_NAME like ? OR LAST_NAME like ?', "%#{query}%")
      where('FIRST_NAME like ? OR LAST_NAME like ?', "%#{query}%", "%#{query}%")
    else
      self.all
    end
  end


end
