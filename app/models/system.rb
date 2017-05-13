class System < ApplicationRecord
  validates :name, presence: true,
    length: { minimum: 5}
  validates :part_number, presence: true
  validates :serial_number, presence: true
end
