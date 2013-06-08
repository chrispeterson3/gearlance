namespace :db do
  desc "Fill database with sample user data"
  task populate: :environment do
    make_users
  end
end

def make_users
  admin = User.create!(first_name:     "David",
                       last_name: "Chung",
                       address_1: "123 Main Street",
                       city: "Chicago",
                       state: "IL",
                       zip: "60647",
                       email:    "Dave@Chung.net",
                       password: "gearlance",
                       password_confirmation: "gearlance")
  admin.toggle!(:admin)
  10.times do |n|
    first_name  = Faker::Name.first_name
    last_name = Faker::Name.last_name
    address_1 = Faker::Address.street_address
    city = Faker::Address.city
    state = Faker::Address.state
    zip = Faker::Address.postcode
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
    User.create!(first_name: first_name,
                 last_name: last_name,
                 address_1: address_1,
                 city: city,
                 state: state,
                 zip: zip,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end
