require 'faker'

desc "create some fake contact"
task :fake_people => :environment do
  print "how many fake contact do you want?"
  num_contact = $stdin.gets.to_i
  print "Fake contat for user id"
  user_id = $stdin.gets.to_i
  print "Fake contat group id"
  group_id = $stdin.gets.to_i
  num_contact.times do
    Contact.create(name: Faker::Name.name,
                   email: Faker::Internet.free_email,
                   phone: Faker::Base.numerify('+91-##########'),
                   cell: Faker::Base.numerify('+91-##########'),
                   des: Faker::Lorem.sentence,
                   birthdate: Faker::Date.birthday(18, 65),
                   user_id: user_id,
                   street: Faker::Address.street_address,
                   city: Faker::Address.city,
                   zipcode: Faker::Address.zip,
                   country: Faker::Address.country,
                   group_id: group_id
    )
  end
  print "#{num_contact} created.n"
end