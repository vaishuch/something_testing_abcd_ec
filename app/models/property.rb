class Property < ApplicationRecord
	has_and_belongs_to_many :products
	has_many :propertyvalues
end
