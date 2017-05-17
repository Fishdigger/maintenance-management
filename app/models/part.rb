class Part < ApplicationRecord
  validates :name, presence: true,
    length: {minimum: 3}
  validates :part_number, presence: true
  #TODO add threshold mailer and such.
end
