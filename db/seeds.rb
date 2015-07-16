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