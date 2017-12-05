class ServerCpu < ApplicationRecord
  has_many :server_specs

  def name
    cores.to_s + " cores"
  end
end
