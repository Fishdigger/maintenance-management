class System < ApplicationRecord
  validates :name, presence: true,
    length: { minimum: 3}
  validates :part_number, presence: true
  validates :serial_number, presence: true
  belongs_to :location
  def intialize
    self.location = Location.find[self.location_id]
  end
end
