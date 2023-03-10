class DeveloperProfile < ApplicationRecord
  belongs_to :user
  has_many :developer_profile_technologies
  has_many :technologies, through: :developer_profile_technologies
  has_many :developer_profile_spoken_languages
  has_many :spoken_languages, through: :developer_profile_spoken_languages
  has_many :offers
  enum years_of_experience: {
    beginer: 0,
    intermediate: 1,
    advanced: 2,
  }

end
