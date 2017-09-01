class Product < ApplicationRecord
  has_and_belongs_to_many :catagories
  has_many :photos
  has_one :quantity
  belongs_to :brand
end
