class Restaurant < ApplicationRecord
  has_many :reviews, depedent: :destroy

  validates :name, :address, :category, presence: true
  #validates :address, presence: true
  #validates :phone_number, presence: true
  validates :category, inclusion: { in: %W[chinese italian japanese french belgian] }
end
