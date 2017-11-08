class ServerSpec < ApplicationRecord
  belongs_to :server_ram
  belongs_to :server_cpu
  mount_uploader :image, ImageUploader
end
