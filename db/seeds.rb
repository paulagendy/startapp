# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: 'bob@email.com', password: '123456', role:2,first_name:'Bob', last_name:'Al Koukou' )
User.create(email: 'anthony@email.com', password: '123456', role:2, first_name:'Anthony', last_name:'Amin' )
User.create(email: 'Steven@email.com', password: '123456', role:2, first_name:'Steven', last_name:'Andrade' )
User.create(email: 'samantha@email.com', password: '123456', role:2, first_name:'Samanthat', last_name:'Bruderlein' )
User.create(email: 'becki@email.com', password: '123456', role:2, first_name:'Becki', last_name:'Belai' )
User.create(email: 'max@email.com', password: '123456', role:2, first_name:'Max', last_name:'Di Fiore' )
User.create(email: 'amanda@email.com', password: '123456', role:2, first_name:'Amanda', last_name:'Doulcet' )
User.create(email: 'matteo@email.com', password: '123456', role:2, first_name:'Matteo', last_name:'Duran' )
User.create(email: 'jenn@email.com', password: '123456', role:2, first_name:'Jenn', last_name:'Gendy' )
# all developers
User.create(email: 'obonekenobi@email.com', password: '123456', role:1, first_name:'Obone', last_name:'Kenobi' )
User.create(email: 'markcuban@email.com', password: '123456', role:1, first_name:'Mark', last_name:'Cuban' )
User.create(email: 'chucknorris@email.com', password: '123456', role:1, first_name:'Chuck', last_name:'Norris' )

# -------------------- Seeds for the projects starts here -------------------- #
Project.create(name: 'BuzzOn', description: 'A social media platform that connects users with local events and activities based on their interests and location.', industry: 'Social Media');
Project.create(name: 'GreenWay', description: 'An eco-friendly home cleaning service that uses only sustainable and non-toxic cleaning products.', industry: 'Home Services');
Project.create(name: 'FoodFuel', description: "A meal delivery service that provides healthy, organic meals tailored to each customer's dietary needs and preferences.", industry: 'Food & Beverage');
Project.create(name: 'CodeCrush', description: "An online coding bootcamp that teaches beginners how to code and prepares them for a career in tech.", industry: 'E-learning')
Project.create(name: 'ShopSnap', description: 'A virtual shopping assistant that uses AI to help customers find the products they want and compare prices across multiple retailers.', industry: 'E-commerce')
Project.create(name: 'FitFlow', description: ' A fitness app that provides personalized workout plans and tracks progress using advanced sensors and machine learning algorithms.', industry: 'Fitness')
Project.create(name: 'EcoGenius', description: 'A consultancy that helps businesses reduce their environmental impact through sustainability audits and green technology adoption.', industry: 'Consulting')
Project.create(name: 'SoundScape', description: 'A mobile app that curates personalized playlists for users based on their mood, activity, and music preferences.', industry: 'Music & Entertainment')


# --------------------- Seeds for the developper profile --------------------- #
DeveloperProfile.create(school: 'University of Toronto', degree: 'Bachelor in Computer Science')
DeveloperProfile.create(school: 'University of Waterloo', degree: 'Master in Computer Science')
DeveloperProfile.create(school: 'University of Michigan', degree: 'Certificate in Electrical Engineering')
DeveloperProfile.create(school: 'University of Texas', degree: 'Master’s in Data Science');
DeveloperProfile.create(school: 'University of California', degree: 'Master of Science in Artificial Intelligence');
DeveloperProfile.create(school: 'UC Berkeley', degree: 'Master’s in Cybersecurity');
DeveloperProfile.create(school: 'Indiana University', degree: 'Master’s Degree in IT Management')
DeveloperProfile.create(school: 'University of Washington', degree: 'Master’s Degree in Computer Science')
DeveloperProfile.create(school: 'Syracuse University', degree: 'Master of Science in Information Systems')


techlangs = ["ReactJS", "Qwik", "Astro", "SolidJS", "MongoDB", "Java", "Python", "C++", "C#", "C", "PHP", "Swift", "Kotlin", "Go", "Rust", "Dart", "SQL", "NoSQL", "HTML", "CSS", "JavaScript", "TypeScript", "NodeJS", "Angular", "VueJS", "React Native", "Flutter", "Ionic", "Android", "iOS", "AWS"]

techlangs.each do |tech|
	Technology.create!(name: tech)
end
