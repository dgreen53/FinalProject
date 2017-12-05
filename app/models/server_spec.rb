class ServerSpec < ApplicationRecord
  validates :name, :description, :server_cpu_id, :server_ram_id, :bill_rate, :image, presence: true
  validates :name, :description, length: { minimum: 3 }
  validates :name, uniqueness: true
  validates :bill_rate, numericality: { greater_than_or_equal_to: 1 }
  belongs_to :server_ram
  belongs_to :server_cpu
  validates_associated :server_ram, :server_cpu
  mount_uploader :image, ImageUploader
end
