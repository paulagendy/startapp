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
# all founders
