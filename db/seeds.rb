User.create!(name: "Vy Quoc Vu",
  email: "vyquocvu@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  admin: true)
99.times { |n|
  name = Faker::Name.name
  email = "exmaple-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,email: email,password: password,
    password_confirmation: password)
}