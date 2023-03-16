Message.destroy_all
DeveloperProfileTechnology.destroy_all
DeveloperProfileSpokenLanguage.destroy_all
TopPick.destroy_all
Offer.destroy_all
DeveloperProfile.destroy_all
ProjectTechnology.destroy_all
Project.destroy_all
SpokenLanguage.destroy_all
Technology.destroy_all
Chatroom.destroy_all
User.destroy_all

puts "Cleaning the database done "

technologies = ["ReactJS", "Qwik", "Astro", "SolidJS", "MongoDB", "Java", "Python", "C++", "C#", "C", "PHP", "Swift", "Kotlin", "Go", "Rust", "Dart", "SQL", "NoSQL", "HTML", "CSS", "JavaScript", "TypeScript", "NodeJS", "Angular", "VueJS", "React Native", "Flutter", "Ionic", "Android", "iOS", "AWS"]

technologies.each do |tech|
	Technology.create!(name: tech)
end
spoken_lang = ["English", "French", "Spanish", "German", "Arabic", "Portuguese"]

spoken_lang.each do |lang|
	SpokenLanguage.create!(name: lang)
end

puts "adding the variables done "

# bob = User.create!(email: 'bob@email.com', password: '123456', nickname: "Bob Extra", role:2,first_name:'Bob', last_name:'Al Koukou' )
anthony = User.create!(email: 'anthony@email.com', password: '123456', nickname: "Anthony Super", role:2, first_name:'Anthony', last_name:'Amin' )
amanda = User.create!(email: 'amanda@email.com', password: '123456', nickname: "Amanda Amazed", role:2, first_name:'Amanda', last_name:'Andrade' )
# samantha = User.create!(email: 'samantha@email.com',nickname: "Samantha Wowza", password: '123456', role:2, first_name:'Samantha', last_name:'Bruderlein' )
max = User.create!(email: 'Max@email.com', password: '123456', role:2, first_name:'Max', last_name:'West' )

# amanda = User.create!(email: 'amanda@email.com', password: '123456', role:2, first_name:'Amanda', last_name:'Doulcet' )
puts "developers done "

anthony_profile = DeveloperProfile.create!(
  user: anthony,
  school: 'University of Waterloo',
  degree: 'Master in Computer Science',
  years_of_experience:5,
  description: 'I bring ideas to life through programming.',
  bio: "Seasoned back-end developer with 12 years of experience building robust, scalable, and secure web applications. I have a deep understanding of programming languages such as Java, Python, and PHP, and I specialize in working with databases, APIs, and server-side technologies.",
  avatar: "https://res.cloudinary.com/dvqjiilqg/image/upload/v1678723688/hurjtaf30nmwkr3z7yel.jpg"
)

DeveloperProfileTechnology.create!(
  developer_profile: anthony_profile,
  technology: Technology.first
)
DeveloperProfileTechnology.create!(
  developer_profile: anthony_profile,
  technology: Technology.second
)

DeveloperProfileSpokenLanguage.create!(
  developer_profile: anthony_profile,
  spoken_language: SpokenLanguage.first
)

# developer_two = DeveloperProfile.create!(
#   user: steven,
#   school: 'University of Michigan',
#   degree: 'Certificate in Electrical Engineering',
#   years_of_experience:2,
#   description:'i want to use my skills to improve the world around me for the better',
#   bio: "Passionate front-end developer with 8 years of experience in creating beautiful and functional websites. I have a strong background in HTML, CSS, JavaScript, and responsive design, and I constantly strive to stay up-to-date with the latest web technologies and trends.",
#   avatar: "https://res.cloudinary.com/dvqjiilqg/image/upload/v1678730658/ghngcdj8sbxuw5wsym6z.jpg"
# )

# DeveloperProfileTechnology.create!(developer_profile: developer_two, technology: Technology.first )
# DeveloperProfileTechnology.create!(developer_profile: developer_two, technology: Technology.second )


# DeveloperProfileSpokenLanguage.create!(developer_profile: developer_two, spoken_language: SpokenLanguage.first)

# developer_three = DeveloperProfile.create!(
#   user: becki,
#   school: 'University of Texas',
#   degree: "Master's in Data Science",
#   years_of_experience:4,
#   description:'I love div soups',
#   bio: "Front-end developer with a knack for crafting stunning and seamless websites. With 3 years of experience in the field, I have honed my skills in HTML, CSS, JavaScript, and responsive design to build top-notch websites that engage users and drive results.",
#   avatar: "https://res.cloudinary.com/dvqjiilqg/image/upload/v1678731134/mfzlz1zhipkndiszpzg5.jpg"
# )

# DeveloperProfileTechnology.create!(developer_profile: developer_three, technology: Technology.first )
# DeveloperProfileTechnology.create!(developer_profile: developer_three, technology: Technology.second )

# DeveloperProfileSpokenLanguage.create!(developer_profile: developer_three, spoken_language: SpokenLanguage.first)

developer_fourth = DeveloperProfile.create!(
  user: max,
  school: 'University of Michigan',
  degree: 'Certificate in Electrical Engineering',
  years_of_experience:2,
  description:'i want to use my skills to improve the world around me for the better',
  bio: "Passionate front-end developer with 8 years of experience in creating beautiful and functional websites. I have a strong background in HTML, CSS, JavaScript, and responsive design, and I constantly strive to stay up-to-date with the latest web technologies and trends.",
  avatar: "https://res.cloudinary.com/dvqjiilqg/image/upload/v1678731134/mfzlz1zhipkndiszpzg5.jpg"
)
DeveloperProfileTechnology.create!(developer_profile: developer_fourth, technology: Technology.first )
DeveloperProfileTechnology.create!(developer_profile: developer_fourth, technology: Technology.second )
DeveloperProfileSpokenLanguage.create!(developer_profile: developer_fourth, spoken_language: SpokenLanguage.first)

developer_fifth = DeveloperProfile.create!(
  user: amanda,
  school: 'UC Berkeley',
  degree: "Master's in Cybersecurity",
  years_of_experience:4,
  description:'I love div soups',
  bio: "Front-end developer with a knack for crafting stunning and seamless websites. With 3 years of experience in the field, I have honed my skills in HTML, CSS, JavaScript, and responsive design to build top-notch websites that engage users and drive results.",
  avatar: "https://res.cloudinary.com/dvqjiilqg/image/upload/v1678730658/ghngcdj8sbxuw5wsym6z.jpg"
)
DeveloperProfileTechnology.create!(developer_profile: developer_fifth, technology: Technology.first )
DeveloperProfileTechnology.create!(developer_profile: developer_fifth, technology: Technology.second )
DeveloperProfileSpokenLanguage.create!(developer_profile: developer_fifth, spoken_language: SpokenLanguage.first)
puts 'developer profile done'

jenn = User.create!(email: 'jenn@email.com', password: '123456', role:1, first_name:'Jenn', last_name:'Gendy', nickname:'Jenny Super' )
obonekenobi = User.create!(email: 'obonekenobi@email.com', password: '123456', role:1, first_name:'Obone', last_name:'Kenobi',nickname:'Obee Dazee' )
matteo = User.create!(email: 'matteo@email.com', password: '123456', role:1, first_name:'Matteo', last_name:'Duran', nickname:'Matteo Marvey' )
markcuban = User.create!(email: 'markcuban@email.com', password: '123456', role:1, first_name:'Mark', last_name:'Cuban' )
chucknorris = User.create!(email: 'chucknorris@email.com', password: '123456', role:1, first_name:'Chuck', last_name:'Norris' )
hiyabel = User.create!(email: 'hiyabelbelai@gmail.com', password: '123456', role:1, first_name:'Hiyabel', last_name:'Belai' )
puts "founders done"

project_from_jenn = Project.create!(
  user: jenn,
  name: 'BuzzOn',
  description: 'A social media platform that connects users with local events and activities based on their interests and location.',
  industry: 'Social Media',
  spoken_language: SpokenLanguage.first
)
ProjectTechnology.create!(project: project_from_jenn, technology: Technology.first )
ProjectTechnology.create!(project: project_from_jenn, technology: Technology.second )

Project.create!(
  user: obonekenobi,
  name: 'GreenWay',
  description: 'An eco-friendly home cleaning service that uses only sustainable and non-toxic cleaning products.',
  industry: 'Home Services',
  spoken_language: SpokenLanguage.second
)
Project.create!(
  user: matteo,
  name: 'FoodFuel',
  description: "A meal delivery service that provides healthy, organic meals tailored to each customer's dietary needs and preferences.",
  industry: 'Food & Beverage',
  spoken_language: SpokenLanguage.third
)
Project.create!(
  user: markcuban,
  name: 'CodeCrush',
  description: "An online coding bootcamp that teaches beginners how to code and prepares them for a career in tech.",
  industry: 'E-learning',
  spoken_language: SpokenLanguage.fourth
)
Project.create!(
  user: chucknorris,
  name: 'ShopSnap',
  description: 'A virtual shopping assistant that uses AI to help customers find the products they want and compare prices across multiple retailers.',
  industry: 'E-commerce',
  spoken_language: SpokenLanguage.fifth
)
puts "project done"

# START for seed for chatroom

# IMPORTANT: Here are gonna be the logged in info for the presentation
# login as jenn and contact anthony

Chatroom.create!(
  name: "Conversation between #{anthony_profile.user.first_name} and #{hiyabel.first_name}",
  founder_id: hiyabel.id,
  developer_id: max.id
)

puts "Generating chatroom done"
#  for seed for chatroom END
