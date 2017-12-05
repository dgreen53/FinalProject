class ServerRam < ApplicationRecord
  has_many :server_specs

  def name
    size.to_s + "GB"
  end
end
