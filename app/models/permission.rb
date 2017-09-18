class Permission < ApplicationRecord
    attr_accessor :name
    belongs_to :role
end
