class TopPick < ApplicationRecord
  belongs_to :project
  belongs_to :developer_profile
end
