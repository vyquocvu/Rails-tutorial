User.create!(name: "Vy Quoc Vu",
  email: "tuyetsonfutu@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  admin: true,
  activated: true,
  activated_at: Time.zone.now)
99.times { |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,email: email,password: password,
    password_confirmation: password,
    activated: true,
    activated_at: Time.zone.now)
}
users = User.order(:created_at).take(6)
5.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end