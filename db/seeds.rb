Sport.destroy_all
User.destroy_all
Event.destroy_all
UserEvent.destroy_all

Sport.create(name: "Basketball")
Sport.create(name: "Kickball")
Sport.create(name: "Soccer")
Sport.create(name: "Yoga")
Sport.create(name: "Dodgeball")
Sport.create(name: "Tennis")
Sport.create(name: "Racquet Ball")
Sport.create(name: "Volley Ball")
Sport.create(name: "Tai Chi")

#event seed variables
duration = [30, 45, 60, 75, 90]
player_count = (2..30).to_a
now = Time.now
a_day_ago = now - 60 * 60 * 24

50.times do
  Event.create(sport_id: Sport.all.sample.id, title: Faker::Robin.quote, location: Faker::Address.community, duration: duration.sample, date: Faker::Date.forward(30), time: rand(a_day_ago..now), player_count: player_count.sample)
end

# user seed variables
age_range = (16..70).to_a
gender = ["Male", "Female", "Non-binary/third gender", "Prefer not to say"]

23.times do
  User.create(name: Faker::Name.name, email:Faker::Internet.email, password:"password", age: age_range.sample, gender: gender.sample)
end

User.create(name: "Laura Kim", email: "laura@gmail.com", password: "password", age: 26, gender: "female")
User.create(name: "Jeff Hwang", email: "jeff@gmail.com", password: "password", age: 28, gender: "male")
