class ServerRam < ApplicationRecord
  has_many :server_specs
  validates :size, presence: true
  validates :size, uniqueness: true
  validates :size, numericality: { greater_than: 0 }

  def name
    size.to_s + "GB"
  end
end
