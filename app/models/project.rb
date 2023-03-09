class Project < ApplicationRecord
  INDUSTRY = ["Social Media", "Home Services", "Food & Beverage", "E-learning", "E-commerce", "Fitness", "Consulting", "Music & Entertainment"];
  belongs_to :user
  belongs_to :spoken_language, optional: true
  has_many :project_technologies
  has_many :technologies, through: :project_technologies
  has_many :offers
  has_many :top_picks
  SPOKEN_LANGUAGE = ["English", "French", "Spanish", "German", "Arabic", "Portuguese", "Mandarin"]
  TECHNOLOGY = ["ReactJS", "Qwik", "Astro", "SolidJS", "MongoDB", "Java", "Python", "C++", "C#", "C", "PHP", "Swift", "Kotlin", "Go", "Rust", "Dart", "SQL", "NoSQL", "HTML", "CSS", "JavaScript", "TypeScript", "NodeJS", "Angular", "VueJS", "React Native", "Flutter", "Ionic", "Android", "iOS", "AWS"]

  accepts_nested_attributes_for :project_technologies,
                                 reject_if: :all_blank,
                                 allow_destroy: true
end
