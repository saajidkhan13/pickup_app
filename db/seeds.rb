Sport.destroy_all
User.destroy_all
Event.destroy_all


Sport.create(name: "Basketball")
Sport.create(name: "Kickball")
Sport.create(name: "Soccer")
Sport.create(name: "Yoga")
Sport.create(name: "Dodgeball")
Sport.create(name: "Yoga")
Sport.create(name: "Bootcamp")

#event seed variables
duration = [30, 45, 60, 75, 90]
player_count = (6..20).to_a

30.times do
  Event.create(sport_id: Sport.all.sample.id, title: Faker::Ancient.titan, location: Faker::Address.community, duration: duration.sample, date: Faker::Date.forward(30), time: Time.now, player_count: player_count.sample)
end

# user seed variables
age_range = (16..70).to_a
sports = ["Basketball", "Kickball", "Soccer", "Yoga", "Zumba"]
gender = ["Male", "Female", "Non-binary/third gender", "Prefer not to say"]

48.times do
  User.create(name: Faker::Name.name, email:Faker::Internet.email, password:"password", age: age_range.sample, gender: gender.sample)
end

User.create(name: "Laura Kim", email: "laura@gmail.com", password: "123", age: 26, gender: "female")
User.create(name: "Jeff Hwang", email: "jeff@gmail.com", password: "456", age: 28, gender: "male")
