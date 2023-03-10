puts "Cleaning the database"

DeveloperProfile.destroy_all
ProjectTechnology.destroy_all
DeveloperProfileSpokenLanguage.destroy_all
Project.destroy_all
Technology.destroy_all
User.destroy_all

bob = User.create!(email: 'bob@email.com', password: '123456', role:2,first_name:'Bob', last_name:'Al Koukou' )
anthony = User.create!(email: 'anthony@email.com', password: '123456', role:2, first_name:'Anthony', last_name:'Amin' )
steven = User.create!(email: 'Steven@email.com', password: '123456', role:2, first_name:'Steven', last_name:'Andrade' )
samantha = User.create!(email: 'samantha@email.com', password: '123456', role:2, first_name:'Samanthat', last_name:'Bruderlein' )
becki = User.create!(email: 'becki@email.com', password: '123456', role:2, first_name:'Becki', last_name:'Belai' )
max = User.create!(email: 'max@email.com', password: '123456', role:2, first_name:'Max', last_name:'Di Fiore' )
amanda = User.create!(email: 'amanda@email.com', password: '123456', role:2, first_name:'Amanda', last_name:'Doulcet' )

# all developers
jenn = User.create!(email: 'jenn@email.com', password: '123456', role:2, first_name:'Jenn', last_name:'Gendy' )
obonekenobi = User.create!(email: 'obonekenobi@email.com', password: '123456', role:1, first_name:'Obone', last_name:'Kenobi' )
matteo = User.create!(email: 'matteo@email.com', password: '123456', role:2, first_name:'Matteo', last_name:'Duran' )
markcuban = User.create!(email: 'markcuban@email.com', password: '123456', role:1, first_name:'Mark', last_name:'Cuban' )
chucknorris = User.create!(email: 'chucknorris@email.com', password: '123456', role:1, first_name:'Chuck', last_name:'Norris' )

# -------------------- Seeds for the projects starts here -------------------- #
Project.create!(user: bob, name: 'BuzzOn', description: 'A social media platform that connects users with local events and activities based on their interests and location.', industry: 'Social Media');
Project.create!(user: bob, name: 'GreenWay', description: 'An eco-friendly home cleaning service that uses only sustainable and non-toxic cleaning products.', industry: 'Home Services');
Project.create!(user: steven, name: 'FoodFuel', description: "A meal delivery service that provides healthy, organic meals tailored to each customer's dietary needs and preferences.", industry: 'Food & Beverage');
Project.create!(user: steven, name: 'CodeCrush', description: "An online coding bootcamp that teaches beginners how to code and prepares them for a career in tech.", industry: 'E-learning')
Project.create!(user: samantha, name: 'ShopSnap', description: 'A virtual shopping assistant that uses AI to help customers find the products they want and compare prices across multiple retailers.', industry: 'E-commerce')
Project.create!(user: samantha, name: 'FitFlow', description: ' A fitness app that provides personalized workout plans and tracks progress using advanced sensors and machine learning algorithms.', industry: 'Fitness')
Project.create!(user: amanda, name: 'EcoGenius', description: 'A consultancy that helps businesses reduce their environmental impact through sustainability audits and green technology adoption.', industry: 'Consulting')
Project.create!(user: amanda, name: 'SoundScape', description: 'A mobile app that curates personalized playlists for users based on their mood, activity, and music preferences.', industry: 'Music & Entertainment')


# --------------------- Seeds for the developper profile --------------------- #
DeveloperProfile.create!(user: jenn, school: 'University of Toronto', degree: 'Bachelor in Computer Science')
DeveloperProfile.create!(user: obonekenobi, school: 'University of Waterloo', degree: 'Master in Computer Science')
DeveloperProfile.create!(user: matteo, school: 'University of Michigan', degree: 'Certificate in Electrical Engineering')
DeveloperProfile.create!(user: markcuban, school: 'University of Texas', degree: 'Master’s in Data Science');
DeveloperProfile.create!(user: chucknorris, school: 'University of California', degree: 'Master of Science in Artificial Intelligence');
=begin
DeveloperProfile.create!(school: 'UC Berkeley', degree: 'Master’s in Cybersecurity');
DeveloperProfile.create!(school: 'Indiana University', degree: 'Master’s Degree in IT Management')
DeveloperProfile.create!(school: 'University of Washington', degree: 'Master’s Degree in Computer Science')
DeveloperProfile.create!(school: 'Syracuse University', degree: 'Master of Science in Information Systems')
=end

technologies = ["ReactJS", "Qwik", "Astro", "SolidJS", "MongoDB", "Java", "Python", "C++", "C#", "C", "PHP", "Swift", "Kotlin", "Go", "Rust", "Dart", "SQL", "NoSQL", "HTML", "CSS", "JavaScript", "TypeScript", "NodeJS", "Angular", "VueJS", "React Native", "Flutter", "Ionic", "Android", "iOS", "AWS"]

technologies.each do |tech|
	Technology.create!(name: tech)
end

spoken_lang = ["English", "French", "Spanish", "German", "Arabic", "Portuguese"]

spoken_lang.each do |lang|
	SpokenLanguage.create!(name: lang)
end