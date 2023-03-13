class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects
  has_one :developer_profile
  has_many :developer_profile_technologies, through: :developer_profile
  has_many :technologies, through: :developer_profile_technologies
  has_many :developer_profile_spoken_languages, through: :developer_profile
  has_many :spoken_languages, through: :developer_profile_spoken_languages
  has_many :offers, through: :developer_profile
  enum role: {
    undefined: 0,
    founder: 1,
    developer: 2
  }

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
