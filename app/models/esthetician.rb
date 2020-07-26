class Esthetician < ApplicationRecord
  has_many :facials
  has_many :clients, through: :facials
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:github]

  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |esthetician|
      #fetch user if already in db, or create one
      esthetician.email = provider_data.info.email
      esthetician.password = Devise.friendly_token[0, 20]
    end
  end

  def facial_count
    self.facials.count
  end

end
