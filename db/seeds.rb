require 'faker'

 Topic.destroy_all
 Rating.destroy_all
 Article.destroy_all
 Newspaper.destroy_all
 Comment.destroy_all
 User.destroy_all
 Search.destroy_all

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

puts "Done!"

