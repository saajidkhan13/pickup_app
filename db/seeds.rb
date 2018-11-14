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

age_range = (16..70).to_a
sports = ["Basketball", "Kickball", "Soccer", "Yoga", "Zumba"]
gender = ["Male", "Female", "Non-binary/third gender", "Prefer not to say"]

50.times do
  User.create(name: Faker::Name.name, email:Faker::Internet.email, password:"password", age: age_range.sample, gender: gender.sample)
end

User.create(name: "Laura Kim", email: "laura@gmail.com", password: "123", age: 26, gender: "female")
User.create(name: "Jeff Hwang", email: "jeff@gmail.com", password: "456", age: 28, gender: "male")
