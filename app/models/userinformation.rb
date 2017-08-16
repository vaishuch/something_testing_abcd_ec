class Userinformation < ApplicationRecord
  belongs_to :user
  has_many :addresses
end
