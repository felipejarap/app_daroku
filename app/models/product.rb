class Product < ApplicationRecord
  belongs_to :category
  has_one_attached :photo
  has_many :orders
  has_many :users, through: :orders
end
