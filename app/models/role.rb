class Role < ApplicationRecord
    has_many :permissions
    belongs_to :technician
end
