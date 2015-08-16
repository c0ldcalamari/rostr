require 'faker'

# admin
user = Organizer.create(username: "admin1", password: "admin")
Organizer.create(username: "admin2", password: "admin")
Event.create(title: "DBC Hackathon", active: false, organizer_id: 1, sub1: "Ruby", sub2: "Javascript", sub3: "Rails", sub4: "Sinatra", sub5: "CSS/JQuery")
Event.create(title: "Biology101 - Field Studies Project", active: false, organizer_id: 2)

# create ten group names
10.times do
  name = Faker::Team.creature
  Group.create(name: name, event_id: 1)
end

# create some students
5.times do
  rates = ["beginner", "intermediate", "advanced"]
  name = Faker::Name.name
  student = Student.create(name: name, email: "a", event_id: 1, group_id: 1)

  student.categories.create(name: "Ruby", rating: rates.sample, subject: 1, event_id: 1)
  student.categories.create(name: "Javascript", rating: rates.sample, subject: 2, event_id: 1)
  student.categories.create(name: "Sinatra", rating: rates.sample, subject: 3, event_id: 1)
  student.categories.create(name: "Rails", rating: rates.sample, subject: 4, event_id: 1)
  student.categories.create(name: "JQuery", rating: rates.sample, subject: 5, event_id: 1)
end

student1 = Student.create(name: "Alex", email: "a", event_id: 1)
student1.categories.create(name: "Ruby", rating: "advanced", subject: 1, event_id: 1)
student1.categories.create(name: "Javascript", rating: "advanced", subject: 2, event_id: 1)
student1.categories.create(name: "Sinatra", rating: "advanced", subject: 3, event_id: 1)
student1.categories.create(name: "Rails", rating: "advanced", subject: 4, event_id: 1)
student1.categories.create(name: "JQuery", rating: "advanced", subject: 5, event_id: 1)
