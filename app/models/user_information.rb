class UserInformation < ApplicationRecord
  belongs_to :user
  has_many :addresses
end
