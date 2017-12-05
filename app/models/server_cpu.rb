class ServerCpu < ApplicationRecord
  has_many :server_specs
  validates :cores, presence: true
  validates :cores, uniqueness: true
  validates :cores , numericality: { greater_than: 0 }
  def name
    cores.to_s + " cores"
  end
end
