class Project < ApplicationRecord
  belongs_to :user
  belongs_to :spoken_language, optional: true
  has_many :project_technologies
  has_many :technologies, through: :project_technologies
  has_many :offers
  has_many :top_picks
end
