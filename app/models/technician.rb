class Technician < ApplicationRecord
    has_many :roles
    has_one :location
end
