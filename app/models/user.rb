class User < ApplicationRecord
  has_many :ownerships
  has_many :products, through: :ownerships

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end