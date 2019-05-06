class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   validates :rut, presence: true
   validates :nickname, presence: true
   validates :email, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :municipality, optional: true
  belongs_to :city, optional: true
  has_one_attached :avatar
  has_many :orders
  has_many :products, through: :orders
end
