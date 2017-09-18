class Part < ApplicationRecord
    has_one :vendor

    #TODO add threshold alerting logic
end
