class Project < ApplicationRecord
  INDUSTRY = ["Social Media", "Home Services", "Food & Beverage", "E-learning", "E-commerce", "Fitness", "Consulting", "Music & Entertainment"];
  belongs_to :user
  belongs_to :spoken_language, optional: true
  has_many :project_technologies
  has_many :technologies, through: :project_technologies
  has_many :offers
  has_many :top_picks
  SPOKEN_LANGUAGE = ["English", "French", "Spanish", "German", "Arabic", "Portuguese", "Mandarin"]
end
