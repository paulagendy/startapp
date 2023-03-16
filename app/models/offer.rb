class Offer < ApplicationRecord
  belongs_to :project
  belongs_to :developer_profile
  enum status: {
    Pending: 0,
    Accepted: 1,
    Rejected: 2,
  }
end
