user = Organizer.create(username: "admin1", password: "admin")
Organizer.create(username: "admin2", password: "admin")
Event.create(title: "DBC Hackathon", active: false, organizer_id: 1)
Event.create(title: "Math Class", active: false, organizer_id: 2)
