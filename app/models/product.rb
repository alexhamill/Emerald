class Product < ApplicationRecord
  has_many :ownerships
  has_many :users, through: :ownerships
end