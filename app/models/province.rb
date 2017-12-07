class Province < ApplicationRecord
  has_many :users
  validates :name, :short, presence: true
  validates :name, length: { minimum: 3 }
  validates :short, length: { maximum: 3 }
  validates :gst, :hst, :pst, numericality: { greater_than_or_equal: 0, less_than: 30 }
end
