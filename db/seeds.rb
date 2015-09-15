organizer = Organizer.create(name: "Admin", email: "admin@admin.com", password: "admin")

event = organizer.events.create(name: "hackathon", password: "admin")

participant = event.participants.create(name: "andrew", email: "atp@gmail.com")

participant.categories.create(subject: "ruby", rating: "4")