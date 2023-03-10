DeveloperProfileTechnology.destroy_all
DeveloperProfileSpokenLanguage.destroy_all
DeveloperProfile.destroy_all
ProjectTechnology.destroy_all
Project.destroy_all
SpokenLanguage.destroy_all
Technology.destroy_all
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

puts "adding the veriables done "
# -------------------- Seeds for the developers starts here -------------------- #
bob = User.create!(email: 'bob@email.com', password: '123456', role:2,first_name:'Bob', last_name:'Al Koukou' )
anthony = User.create!(email: 'anthony@email.com', password: '123456', role:2, first_name:'Anthony', last_name:'Amin' )
steven = User.create!(email: 'Steven@email.com', password: '123456', role:2, first_name:'Steven', last_name:'Andrade' )
samantha = User.create!(email: 'samantha@email.com', password: '123456', role:2, first_name:'Samanthat', last_name:'Bruderlein' )
becki = User.create!(email: 'becki@email.com', password: '123456', role:2, first_name:'Becki', last_name:'Belai' )
max = User.create!(email: 'max@email.com', password: '123456', role:2, first_name:'Max', last_name:'Di Fiore' )
amanda = User.create!(email: 'amanda@email.com', password: '123456', role:2, first_name:'Amanda', last_name:'Doulcet' )
puts "developers done "

# --------------------- Seeds for the developper profile --------------------- #
# DeveloperProfile.create!(user: bob, school: 'University of Toronto', degree: 'Bachelor in Computer Science', years_of_experience:0, developer_profile_technologies: Technology.first)
developer_one = DeveloperProfile.create!(user: anthony, school: 'University of Waterloo', degree: 'Master in Computer Science', years_of_experience:5, description: 'i need a job')
# --------------------- Seeds for the technology --------------------- #
DeveloperProfileTechnology.create!(developer_profile: developer_one, technology: Technology.first )
DeveloperProfileTechnology.create!(developer_profile: developer_one, technology: Technology.second )
# --------------------- Seeds for the SpokenLanguage --------------------- #
DeveloperProfileSpokenLanguage.create!(developer_profile: developer_one, spoken_language: SpokenLanguage.first)

developer_two = DeveloperProfile.create!(user: steven, school: 'University of Michigan', degree: 'Certificate in Electrical Engineering', years_of_experience:2, description:'i want to use my skills to improve the world around me for the better')
# --------------------- Seeds for the technology --------------------- #
DeveloperProfileTechnology.create!(developer_profile: developer_two, technology: Technology.first )
DeveloperProfileTechnology.create!(developer_profile: developer_two, technology: Technology.second )
# --------------------- Seeds for the SpokenLanguage --------------------- #
DeveloperProfileSpokenLanguage.create!(developer_profile: developer_two, spoken_language: SpokenLanguage.first)

developer_three = DeveloperProfile.create!(user: becki, school: 'University of Texas', degree: "Master's in Data Science", years_of_experience:4, description:'hirre me im good for it ;)' )
# --------------------- Seeds for the technology --------------------- #
DeveloperProfileTechnology.create!(developer_profile: developer_three, technology: Technology.first )
DeveloperProfileTechnology.create!(developer_profile: developer_three, technology: Technology.second )
# --------------------- Seeds for the SpokenLanguage --------------------- #
DeveloperProfileSpokenLanguage.create!(developer_profile: developer_three, spoken_language: SpokenLanguage.first)

developer_fourth = DeveloperProfile.create!(user: max, school: 'University of California', degree: 'Master of Science in Artificial Intelligence', years_of_experience:2,)
# --------------------- Seeds for the technology --------------------- #
DeveloperProfileTechnology.create!(developer_profile: developer_fourth, technology: Technology.first )
DeveloperProfileTechnology.create!(developer_profile: developer_fourth, technology: Technology.second )
# --------------------- Seeds for the SpokenLanguage --------------------- #
DeveloperProfileSpokenLanguage.create!(developer_profile: developer_fourth, spoken_language: SpokenLanguage.fourth)

developer_fifth = DeveloperProfile.create!(user: amanda, school: 'UC Berkeley', degree: "Master's in Cybersecurity", years_of_experience:4, )
# --------------------- Seeds for the technology --------------------- #
DeveloperProfileTechnology.create!(developer_profile: developer_fifth, technology: Technology.first )
DeveloperProfileTechnology.create!(developer_profile: developer_fifth, technology: Technology.second )
# --------------------- Seeds for the SpokenLanguage --------------------- #
DeveloperProfileSpokenLanguage.create!(developer_profile: developer_fifth, spoken_language: SpokenLanguage.first)
puts 'devemoper profile done'

# -------------------- Seeds for the founders starts here -------------------- #
jenn = User.create!(email: 'jenn@email.com', password: '123456', role:1, first_name:'Jenn', last_name:'Gendy' )
obonekenobi = User.create!(email: 'obonekenobi@email.com', password: '123456', role:1, first_name:'Obone', last_name:'Kenobi' )
matteo = User.create!(email: 'matteo@email.com', password: '123456', role:1, first_name:'Matteo', last_name:'Duran' )
markcuban = User.create!(email: 'markcuban@email.com', password: '123456', role:1, first_name:'Mark', last_name:'Cuban' )
chucknorris = User.create!(email: 'chucknorris@email.com', password: '123456', role:1, first_name:'Chuck', last_name:'Norris' )
# add the spoken languages
puts "founders done "

# -------------------- Seeds for the projects starts here -------------------- #
project_one = Project.create!(user: jenn, name: 'BuzzOn', description: 'A social media platform that connects users with local events and activities based on their interests and location.', industry: 'Social Media', spoken_language: SpokenLanguage.first)
ProjectTechnology.create!(project: project_one, technology: Technology.first )
ProjectTechnology.create!(project: project_one, technology: Technology.second )
Project.create!(user: obonekenobi, name: 'GreenWay', description: 'An eco-friendly home cleaning service that uses only sustainable and non-toxic cleaning products.', industry: 'Home Services', spoken_language: SpokenLanguage.second )
Project.create!(user: matteo, name: 'FoodFuel', description: "A meal delivery service that provides healthy, organic meals tailored to each customer's dietary needs and preferences.", industry: 'Food & Beverage', spoken_language: SpokenLanguage.third )
Project.create!(user: markcuban, name: 'CodeCrush', description: "An online coding bootcamp that teaches beginners how to code and prepares them for a career in tech.", industry: 'E-learning', spoken_language: SpokenLanguage.fourth )
Project.create!(user: chucknorris, name: 'ShopSnap', description: 'A virtual shopping assistant that uses AI to help customers find the products they want and compare prices across multiple retailers.', industry: 'E-commerce', spoken_language: SpokenLanguage.fifth)
puts "project done "
# --------------------- Seeds for the projects tecnologies --------------------- #
# ProjectTechnology.create!(project: )

# create
