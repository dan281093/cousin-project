# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  { name: 'Adam Black',
    email: 'Adam@test.com',
    password: 123456,
    address: 'Tel Aviv'
  },

  {
    name: 'Eve Mendona'
    , email: 'eve@test.com'
    , password: 123456,
    address: 'Tel Aviv' }

{
  name: 'Donald Trump',
  email: 'Don@test.com',
  password: 123456,
  address: 'Tel Aviv' }],

  User.create!(users)
adam = User.find_by(name: "Adam Black")
don = User.find_by(name: "Donald Trump")
eve = User.find_by(name: "Eve Mendona")

services =  [
  {
    category: 'Goverment Departments',
  description: 'navigating govermentail services and departments',
   user_id: 1
 },

 { category: 'Forms',
  descriptions: 'Help filling out forms correctly in Hebrew and Arabic form English',
   user_id: 1
 },

{
  category: 'Trips',
  description: 'showing you how to go on day trip in Israel. When and where to go to certain places and what to avoid',
  user_id: 3 },

{ category: 'Health and Diet',
  description: 'Helping you find where to get your dietary needs, and where to find medicine and if you need a prescrition.'
  user_id: 3 },
{ category: 'Neighborhoods',
  description: ' Will show you around the Neighborhood and let you know where who sells what and where the good buys are'
  user_id: 1 }]

  Service.create!(services)
  gd = Service.find_by(category: 'Goverment Departments')
  forms = Service.find_by(category: 'Forms')
  trips Service.find_by(category: 'Trips')
  hd Service.find_by(category: 'Health and Diet')
  Neighborhood Service.find_by(category: 'HNeighborhoods')

#


