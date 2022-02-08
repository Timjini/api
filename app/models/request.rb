class Request < ApplicationRecord

    enum status: {
        pending: 0,
        approved: 1,
    }

    enum category: {
        one_time_task: 0,
        material_need: 1,
    }

    geocoded_by :address
    after_validation :geocode

    belongs_to :user
end
