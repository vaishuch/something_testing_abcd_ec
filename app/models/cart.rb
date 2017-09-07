class Cart < ApplicationRecord	
	belongs_to :user
	has_many :cartitems, :dependent => :destroy
end
