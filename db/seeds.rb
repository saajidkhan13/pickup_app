Sport.destroy_all
User.destroy_all
Event.destroy_all


Sport.create(name: "Basketball")
Sport.create(name: "Kickball")
Sport.create(name: "Soccer")
Sport.create(name: "Yoga")
Sport.create(name: "Zumba")

Event.create(sport_id: Sport.all.sample.id, title: "Pickup Game in Central Park", date: "November 16th, 2018", time: "0235", location: "Central Park", duration: 60)

age_range = (16..50).to_a
sports = ["Basketball", "Kickball", "Soccer", "Yoga", "Zumba"]

20.times do
  User.create(name: Faker::Name.name, email:Faker::Internet.email, password:"password", age: age_range.sample, gender:"male")
end

User.create(name: "Laura Kim", email: "laura@gmail.com", password: "123", age: 26, gender: "female")
User.create(name: "Jeff Hwang", email: "jeff@gmail.com", password: "456", age: 28, gender: "male")
