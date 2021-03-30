require 'faker'

puts "creating users"
10.times do
    user = User.new(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        bio: Faker::Lorem.sentence(word_count: 30),
        email: Faker::Internet.email(domain: 'all-ears'),
        username: Faker::Internet.username,
        password: "allears123",
        birthdate: Faker::Date.birthday(min_age: 18, max_age: 120),
    )
    user.save!
end

puts " Creating master supreme"

user = User.new(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        bio: Faker::Lorem.sentence(word_count: 30),
        email: "nicolas.filangeri@live.fr",
        username: Faker::Internet.username,
        password: "allears123",
        birthdate: Faker::Date.birthday(min_age: 18, max_age: 120),
    )
    user.save!

puts "creating topics"

10.times do
    topic = Topic.new(
        subject: Faker::Name.name,
        content: Faker::Lorem.sentence(word_count: 100),
        user_id: Faker::Number.within(range: 1..10)
    )
    topic.save!
end
puts "Done!"