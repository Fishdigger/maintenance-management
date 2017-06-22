class Technician < ApplicationRecord
  validates :name, presence: true
  validates :role_id, presence: true
  belongs_to :location
  belongs_to :role
end
