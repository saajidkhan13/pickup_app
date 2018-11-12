Sport.destroy_all
User.destroy_all

Sport.create(name: "Basketball", player_count: 10)
Sport.create(name: "Kickball", player_count: 16)
Sport.create(name: "Soccer", player_count: 22)
Sport.create(name: "Yoga", player_count: 30)
Sport.create(name: "Zumba", player_count: 20)

age_range = (16..50).to_a
sports = ["Basketball", "Kickball", "Soccer", "Yoga", "Zumba"]

20.times do
  User.create(name: Faker::Name.name, email:Faker::Internet.email, password:"password", age: age_range.sample, gender:"male")
end

User.create(name: "Laura", email: "laura@gmail.com", password: "123", age: 26, gender: "female")
User.create(name: "Jeff", email: "jeff@gmail.com", password: "456", age: 28, gender: "male")
