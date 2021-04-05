require 'faker'

 Topic.destroy_all
 Rating.destroy_all
 Article.destroy_all
 Newspaper.destroy_all
 Comment.destroy_all
 User.destroy_all
 Search.destroy_all

# puts "creating search"

# search = Search.new(query: "covid")
# search.save!

# search = Search.new(query: "hong kong")
# search.save!

# search = Search.new(query: "brexit")
# search.save!

# search = Search.new(query: "lockdown")
# search.save!

# search = Search.new(query: "pfizer")
# search.save!

# search = Search.new(query: "biden")
# search.save!


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
        user_id: User.all.map(&:id).sample,
        category: "Science"
    )
    topic.save!
end

puts "creating newspapers"

    bbc = Newspaper.new(
        name:"BBC",
        tag_political:"Center",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/BBC_News_2019.svg/1200px-BBC_News_2019.svg.png",
        engine: "8957896738330692472"
    )
    bbc.save!

    daily_mail = Newspaper.new(
        name:"Daily Mail",
        tag_political:"Hard Right",
        image: "https://media-exp1.licdn.com/dms/image/C4D0BAQHLDxR_xaKdog/company-logo_200_200/0/1565719672324?e=2159024400&v=beta&t=bUZD0xi324_M6pGoEJ55XRb4QqQCGenXN_9KdhnqvBg",
        engine: "7560650222889456682"
    )
    daily_mail.save!

    bloomberg = Newspaper.new(
        name:"Bloomberg",
        tag_political:"Lean Left - Financial",
        image: "https://media-exp1.licdn.com/dms/image/C4E0BAQGAH_i8FRg-uw/company-logo_200_200/0/1525302924134?e=2159024400&v=beta&t=U1yKFoI6RVpZcBafGELtrieAkRf2cPBRQHw_1Ss6aBc",
        engine: "3299184240765840895"
    )
    bloomberg.save!


    ny_post = Newspaper.new(
        name:"New York Post",
        tag_political:"Lean Right",
        image: "https://variety.com/wp-content/uploads/2020/10/New-York-Post-Twitter.png",
        engine: "3215182345478357637"
    )
    ny_post.save!

    reuters = Newspaper.new(
        name:"Reuters",
        tag_political:"Center - Financial",
        image: "https://media-exp1.licdn.com/dms/image/C510BAQEcIZOHYb20pQ/company-logo_200_200/0/1519862856588?e=2159024400&v=beta&t=MKQWRo4otgPSzFgKzeW5yteogNb55kSLi6trFbbZWdU",
        engine: "647685674801936278"
    )
    reuters.save!

    vox = Newspaper.new(
        name:"Vox",
        tag_political:"Hard Left",
        image: "https://yt3.ggpht.com/ytc/AAUvwnh-WtrLXKw49UJz5rS3fH9IuMVLjVhvF_09Bsy43Q=s900-c-k-c0x00ffffff-no-rj",
        engine: "4227251698055510725"
    )
    vox.save!

puts "creating Articles"
5.times do
  article = Article.new(
    search_id:2,
    newspaper_id:1,
    title: "hello",
    content: "bla bla",
    description: "oh my",
    publication_date: "10/12",
    image: "https://gocycle.com/wp-content/uploads/2019/02/theguardian.jpg"
    )
  article.save!
end

puts "creating objectiveness ratings"
1000.times do
    rating = Rating.new(
        user_id: User.all.map(&:id).sample,
        article_id:  Faker::Number.within(range: 1..10),
        rating: Faker::Number.within(range: 1..100),
    )
    rating.save
end




puts "Done!"

