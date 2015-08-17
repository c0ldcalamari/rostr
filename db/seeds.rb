require 'faker'

# admin
user = Organizer.create(username: "Hunter", password: "admin")
Organizer.create(username: "admin", password: "admin")
Event.create(title: "DBC Hackathon", description: "DevBootcamp is hosting a Hackathon! August 15 - August 16th! There will be pizza and coffee, woo!", active: false, organizer_id: 1, sub1: "Ruby", sub2: "Javascript", sub3: "Rails", sub4: "Sinatra", sub5: "CSS/JQuery")
Event.create(title: "Biology101 - Field Studies Project", active: false, organizer_id: 2)

# create ten group names
10.times do
  name = Faker::Team.creature
  Group.create(name: name, event_id: 1)
end

students = ["Eangelica Aton", "Nash Collins", "Andrew Deal", "Eric Garret", "Horace He",
"Stephanie Imperial", "Sameer Jain", "Yunjin Kim", "Tiffany Lam", "Yijie Ma",
"Andrew Carpenter", "Devin Liu", "Alex Kass", "Brenda Nguyen", "Andrew Pham",
"Erin Beitel", "James Bomotti", "Lisa Swanson", "Sebastian Cheraux",
"Phillip Yoo", "Benjamin Hsieh", "David Uli", "Tarik Bennet",
"Andrew Dowd", "Jacob Powers", "Jin Zhao", "Dave Doria", "Yulia Ladutko",
"Tanay Arora", "Carissa Blosson", "Arielle Chen", "Alex Cusack", "Hing Huynh",
"Majd Murad", "Eric Saxman", "Alex White", "Hunter Chapman", "Kelsey Pedersen",
"Phil", "Alex J", "Jacklyn F", "Teresa Mother", "James Tao",
"Jason Son", "Micheal Jordan", "Zoe Ingram", "Ringo Star", "Bear Tao",
"Lauryn Zhao", "Monkey Town", "Andy See", "Diana", "George",
"Phillip", "Kevin", "Andres", "Daniela", "Student 15", "Student 14",
"Zoe Ingram", "Alex", "Diana", "Jacklyn", "Peter" ]

# create some students
49.times do |i|
  rates = ["beginner", "intermediate", "advanced"]
  name = Faker::Name.name
  student = Student.create(name: students[i], email: "student@dbc.com", points: 0, event_id: 1)

  student.categories.create(name: "Ruby", rating: rates.sample, subject: 1, event_id: 1)
  student.categories.create(name: "Javascript", rating: rates.sample, subject: 2, event_id: 1)
  student.categories.create(name: "Sinatra", rating: rates.sample, subject: 3, event_id: 1)
  student.categories.create(name: "Rails", rating: rates.sample, subject: 4, event_id: 1)
  student.categories.create(name: "JQuery", rating: rates.sample, subject: 5, event_id: 1)
end


