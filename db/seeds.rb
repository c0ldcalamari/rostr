require 'faker'

user = Organizer.create(username: "admin1", password: "admin")
Organizer.create(username: "admin2", password: "admin")
Event.create(title: "DBC Hackathon", active: false, organizer_id: 1)
Event.create(title: "Math Class", active: false, organizer_id: 2)


20.times do
  name = Faker::Name.name
  group = (1..10).to_a.sample
  Student.create(name: name, password: "a", event_id: 1, group_id: group)
end
