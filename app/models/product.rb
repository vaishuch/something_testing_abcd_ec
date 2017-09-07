class Product < ApplicationRecord
  has_and_belongs_to_many :catagories
  has_and_belongs_to_many :catagory_types
  has_and_belongs_to_many :propertyvalues
  has_and_belongs_to_many :properties
  has_many :photos
  has_one :quantity
  belongs_to :brand
end
