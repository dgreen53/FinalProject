class Address < ApplicationRecord
  belongs_to :province
  validates :street_address, :city, :postal, :phone, :province_id, presence: true
  validates :street_address, :city, length: { minimum: 2 }
  validates :phone, length: { minimum: 9 }
end
