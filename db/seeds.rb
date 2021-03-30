require 'faker'

puts "creating users"
10.times do
    user = User.new (
        first_name: Faker::Name
    )
end






puts "creating topics"
10.times do
    topic = Topic.new (
        subject: Faker::Name.Name
        user_id: Faker::Number.between(from 1, to 5)
    )
end
    topic.save
puts "Done!"