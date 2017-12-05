class Customer < ApplicationRecord
  belongs_to :address
  validates :email, :first_name, :last_name, presence:true
  validates :email, uniqueness: true
  validates :first_name, :last_name, length: { minimum: 2 }
  validates :email, length: { minimum: 5 }
  validates_format_of :email, :with =>/@/
end
