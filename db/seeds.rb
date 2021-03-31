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

puts "creating newspapers"
10.times do
    newspaper = Newspaper.new(
        name: Faker::Name.name,
        tag_political: Faker::Book.author,
    )
    newspaper.save!
end

puts "creating articles"

10.times do
    article = Article.new(
        title: Faker::Book.title,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi lorem quam, malesuada in ante pretium, molestie finibus nisl. Phasellus ultrices leo quis tempus placerat. Donec ligula tortor, sodales mollis sapien quis, vulputate lobortis risus. Quisque tempus aliquam sapien, eu iaculis risus. Duis in elit elementum tortor iaculis euismod eget ut lorem. Aliquam erat volutpat. Suspendisse non ex et dolor gravida elementum sit amet vel ipsum. Nam maximus volutpat tempor. Etiam dapibus, lectus et pellentesque venenatis, metus turpis ornare dolor, eu mollis erat urna in lorem. Phasellus gravida mollis elit, a vestibulum nisl fermentum et.",
        writers_name: Faker::Book.author,
        publication_date:Faker::Date.between(from: '2020-09-23', to: '2021-01-25'),
        newspaper_id:  Faker::Number.within(range: 1..10)
    )
    article.save!
end

puts "creating comments"
10.times do
    comment = Comment.new(
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi lorem quam, malesuada in ante pretium, molestie finibus nisl. Phasellus ultrices leo quis tempus placerat. Donec ligula tortor, sodales mollis sapien quis, vulputate lobortis risus. Quisque tempus aliquam sapien, eu iaculis risus. Duis in elit elementum tortor iaculis euismod eget ut lorem. Aliquam erat volutpat. Suspendisse non ex et dolor gravida elementum sit amet vel ipsum. Nam maximus volutpat tempor. Etiam dapibus, lectus et pellentesque venenatis, metus turpis ornare dolor, eu mollis erat urna in lorem. Phasellus gravida mollis elit, a vestibulum nisl fermentum et.",
        user_id: Faker::Number.within(range: 1..10),
        article_id:  Faker::Number.within(range: 1..10)
    )
    comment.save!
end

puts "creating objectiveness ratings"
1000.times do
    rating = Rating.new(
        user_id: Faker::Number.within(range: 1..10),
        article_id:  Faker::Number.within(range: 1..10),
        rating: Faker::Number.within(range: 1..100),
    )
    rating.save!
end



puts "Done!"

