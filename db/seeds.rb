# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Request.destroy_all
Response.destroy_all
Choice.destroy_all

5.times do
User.create(
  first_name: Faker::Name.first_name,
  email: Faker::Internet.free_email,
  password: "123456",
  status: "student",
  last_name: Faker::Name.last_name
)
end


10.times do
Request.create(
  question: "do you like this design ?",
  user: User.all.sample,
  image: 'http://www.webstorm.ca/images/responsive-websites.jpg'
)
end

choice1 = Choice.create(
  choice_text: "Yes",
  request_id: 1
)

choice2 = Choice.create(
  choice_text: "No",
  request_id: 1
)

response1 = Response.create(
  user_id: 2,
  request_id: 1,
  choice_id: 1,
  comment: "Good job !"
)
