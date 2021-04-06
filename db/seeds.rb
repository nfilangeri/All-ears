require 'faker'

 Topic.destroy_all
 Rating.destroy_all
 Article.destroy_all
 Newspaper.destroy_all
 Comment.destroy_all
 User.destroy_all
 Search.destroy_all



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

# puts "creating topics"


#     topic = Topic.new(
#         subject: "Countries are suspending AstraZeneca vaccinations?",
#         content: "The EMA says there is “no indication that vaccination has caused these conditions”, adding that the number of reports of blood clots in people who received the AstraZeneca vaccine was no higher than for those who hadn’t gotten the shot. So this makes me wonder why are so many countries cancelling orders?",
#         user_id: (1..10).sample,
#         category: "Health"
#     )
#     topic.save!

#     topic = Topic.new(
#         subject:"Gun control",
#         content:"Gun violence has been a heated debate topic in the U.S. for years. Mass shootings and other acts of gun violence kill nearly 40,000 people every year in the U.S. Why is this still allowed?! Is it really an amendmant issue, or is it only lobbying?",
#         user_id: User.all.map(&:id).sample,
#         category:"Politics"
#     )
#       topic.save!

#     topic = Topic.new(
#         subject:"Covid vaccines",
#         content:"Vaccines have revolutionized global health with life-saving immunity from certain diseases. Polio, smallpox, tetanus, and other infectious diseases are no longer deadly because of innovative vaccines. This is why I just don't understand why people are against it! Please explain to me if you can.",
#         user_id: User.all.map(&:id).sample,
#         category:"Health"
#     )
#     topic.save!

#     topic = Topic.new(
#         subject:"Death Penalty in the US",
#         content:"Virginia has become the first Southern US state to abolish the death penalty after its governor signed into law a bill that ends capital punishment. And not only Virginia but also other states in the US have started banning it. I've heard it has something to do with the insurrance of the firms that created the lethal dose, has anyone else heard this?",
#         user_id: User.all.map(&:id).sample,
#         category:"Global"
#     )
#     topic.save!

#     topic = Topic.new(
#         subject:"Is Biden doing a better job than Trump?",
#         content:"Biden is undoing so much of the work that Trump put in. Is this the right move and more importantly, is this what Americans want?",
#         user_id: User.all.map(&:id).sample,
#         category:"Politics"
#     )
#     topic.save!

#     topic = Topic.new(
#         subject:"Transgender Rights - Should transgender people be allowed to go to their desired gender prison?",
#         content:"A transgender woman has spoken of the 'hell on earth' she suffered after being raped and abused more than 2,000 times in an all-male prison. I understand this is complicated matter, but I think in my heart that transgender people should be allowed, it just isn't safe otherwise. Who thinks otherwise? Please explain it to me so I can understand the other side of the narrative",
#         user_id: User.all.map(&:id).sample,
#         category:"Politics"
#     )
#     topic.save!

#     topic = Topic.new(
#         subject:"Cancel culture - JK Rowling row",
#         content: "Even free speech, one of America’s most cherished values, is controversial within the angry borders of cancel culture, which seeks to censor and punish people whose actions and words have offended others. JK Rowling for instance is the prime example. Was society right to cancel her like this?",
#         user_id: User.all.map(&:id).sample,
#         category:"People"
#     )
#     topic.save!

#     topic = Topic.new(
#         subject:"Race Issues in Bridgerton",
#         content: "Bridgerton wants to have Black characters while handwaving the reality of racism. Society has a genuinely colorblind structure, and that most of the men and women we meet over the course of the show start out on more or less equal footing, regardless of their skin tone. This is, at least, the alternate historical world that Bridgerton’s creative team seems to have wanted to depict. Is this right?",
#         user_id: User.all.map(&:id).sample,
#         category:"Culture"
#     )
#     topic.save!

#     topic = Topic.new(
#         subject:"French Senate Law on banning the Burqa for underage girls",
#         content: "Less than a month after voters in Switzerland supported a ban on the burqa and niqab, its neighboring nation, France, has taken a more severe stance against “religious” clothing and symbols with its move to outlaw the hijab on women under the age of 18 in public places. I find this crazy because you can wear a scarf on your head for fashion reasons but not if you're a muslim!",
#         user_id: User.all.map(&:id).sample,
#         category:"Politics"
#     )
#     topic.save!

#     topic = Topic.new(
#         subject:"Johnny Depp: Wife Beater?",
#         content: "Johnny Depp has failed in his attempt to challenge the ruling in the U.K. High Court that he was violent to his former wife Amber Heard. Depp’s lawyer, Andrew Caldecott, said Heard told a “calculated and manipulative lie” in a pledge to donate her $7 million divorce settlement to charity. For me if she actually does this, then it clearly shows that she isn't lying! Thoughts?",
#         user_id: User.all.map(&:id).sample,
#         category:"People"
#     )
#     topic.save!

#     topic = Topic.new(
#         subject:"Is another lockdown really the best solution",
#         content: "obody wants a lockdown. You’d think that would go without saying. As England faces a three-tier system of regionally unequal lockdowns or the possibility of a national “circuit breaker”, there is no one sitting around thinking, “Oh good, time to tank the economy, halt NHS services, and wreck everyone’s mental health, again. I love this.” That’s perverse, and such a person surely doesn’t exist. Is this really the right solution? Leaving people with such emotional debt. I think we should maybe just make the old people lockdown and the youth who are at no risk can continue on with the economy.",
#         user_id: User.all.map(&:id).sample,
#         category:"Global"
#     )
#     topic.save!

#     topic = Topic.new(
#         subject:"Extinction Rebellion Methods",
#         content: "Am I the only one that finds extinction rebellion's methods a little too much? On the one hand I understand it because people are paying attention and listening to them. But on the other hand it makes me think they are distracting people from the real issues at heart of the global climate crisis. They are also disrupting A LOT of people who might be very environmentally active. I just think it's a bit much. Please let me know if you think differently, I'd love to hear why.",
#         user_id: User.all.map(&:id).sample,
#         category:"Global"
#     )
#     topic.save!

#     topic = Topic.new(
#         subject:"No meat in school cafetarias",
#         content: "The French government has criticised Lyon's mayor after he removed meat from school lunches in the city. Gregory Doucet, a member of the Green party, has said the move allows service to be streamlined and quickened amid coronavirus restrictions. But the government has hit back, accusing him of risking children's health. 'Let's stop putting ideology on our children's plates', wrote Agriculture Minister Julien Denormandie."
#         user_id: User.all.map(&:id).sample,
#         category:"Global"
#     )
#     topic.save!


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

# puts "creating Articles"
# 5.times do
#   article = Article.new(
#     search_id:2,
#     newspaper_id:1,
#     title: "hello",
#     content: "bla bla",
#     description: "oh my",
#     publication_date: "10/12",
#     image: "https://gocycle.com/wp-content/uploads/2019/02/theguardian.jpg"
#     )
#   article.save!
# end

# puts "creating objectiveness ratings"
# 1000.times do
#     rating = Rating.new(
#         user_id: User.all.map(&:id).sample,
#         article_id:  Faker::Number.within(range: 1..10),
#         rating: Faker::Number.within(range: 1..100),
#     )
#     rating.save!
# end

puts "creating search"

search = Search.new(query: "covid")
search.save!

search = Search.new(query: "hong kong")
search.save!

search = Search.new(query: "brexit")
search.save!

search = Search.new(query: "lockdown")
search.save!

search = Search.new(query: "pfizer")
search.save!

search = Search.new(query: "biden")
search.save!


puts "Done!"

