# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying all services!!!"
## Clear all services
Service.destroy_all

puts "destroying all users!!!"
## clear old users
User.destroy_all

users = [
  { name: 'Adam Black',
    email: 'Adam@test.com',
    password: '123456',
    address: 'Tel Aviv',
    remote_photo_url: "https://picsum.photos/200"
  },
  {
    name: 'Eve Mendona',
    email: 'eve@test.com',
    password: '123456',
    address: 'Tel Aviv' ,
    remote_photo_url: 'https://picsum.photos/200'
  },
  {
  name: 'Donald Trump',
  email: 'Don@test.com',
  password: '123456',
  address: 'Tel Aviv',
  remote_photo_url: 'https://picsum.photos/200'
  }
]

puts "I am creating users now!"
  User.create!(users)

adam = User.find_by(name: "Adam Black")
don = User.find_by(name: "Donald Trump")
eve = User.find_by(name: "Eve Mendona")

services =  [
  {
    category: 'Government Departments',
  description: 'navigating govermentail services and departments',
   user_id: adam.id,
   name: "burocratic advisor"
 },

 { category: 'Forms',
  description: 'Help filling out forms correctly in Hebrew and Arabic form English',
   user_id: adam.id,
   name: "Form Translator"
 },

{
  category: 'Trips',
  description: 'showing you how to go on day trip in Israel. When and where to go to certain places and what to avoid',
  user_id: don.id,
  name: "Tour Guide"
},

{ category: 'Health and Diet',
  description: 'Helping you find where to get your dietary needs, and where to find medicine and if you need a prescrition.',
  user_id: don.id,
  name: "Health enthusiast"
},
{ category: 'Neighborhoods',
  description: ' Will show you around the Neighborhood and let you know where who sells what and where the good buys are',
  user_id: adam.id,
  name: "Local socialite"
}]


puts "I am creating services now!"
  Service.create!(services)

gd = Service.find_by(category: 'Government Departments')
forms = Service.find_by(category: 'Forms')
trips = Service.find_by(category: 'Trips')
hd = Service.find_by(category: 'Health and Diet')
neighborhood = Service.find_by(category: 'Neighborhoods')

#
puts "done making seeds you bitch"


