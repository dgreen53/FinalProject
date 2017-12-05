class ServerOs < ApplicationRecord
  validates :name, :description, :image, presence: true
  validates :name, :description, length: { minimum: 3 }
  mount_uploader :image, ImageUploader
end
