class Offer < ApplicationRecord
  belongs_to :project
  belongs_to :developer_profile
  enum status: {
    pending: 0,
    accepted: 1,
    rejected: 2,
  }
end
