class CatagoryType < ApplicationRecord
  belongs_to :catagory
  has_and_belongs_to_many :products
end
