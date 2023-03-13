class DeveloperProfile < ApplicationRecord
  belongs_to :user
  has_many :developer_profile_technologies
  has_many :technologies, through: :developer_profile_technologies
  has_many :developer_profile_spoken_languages
  has_many :spoken_languages, through: :developer_profile_spoken_languages
  has_many :offers

end
