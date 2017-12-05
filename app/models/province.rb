class Province < ApplicationRecord
  has_many :addresses
  validates :name, :short, presence: true
  validates :name, length: { minimum: 3 }
  validates :short, length: { maximum: 3 }
  validates :gst, :hst, :pst, numericality: { greater_than: 0, less_than: 30 }
end
