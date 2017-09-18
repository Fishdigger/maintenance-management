class Vendor < ApplicationRecord
    has_many :systems
    has_many :parts
end
