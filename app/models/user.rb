class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_many :bookings, dependent: :destroy
  # Voir si on ajoute has_many :bookings, through: :items
  has_many :items, dependent: :destroy
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
