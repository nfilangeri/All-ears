require 'net/http'
class Newspaper < ApplicationRecord
  has_many :articles

  def get_articles
    uri = URI.parse("https://custom-search.p.rapidapi.com/api/search/CustomNewsSearchAPIV2?q=covid&searchEngineId=8957896738330692472&pageNumber=1")
    @bcc = Newspaper.new("BBC News", "center")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    @data = http.get(uri.request_uri, {'Content-Type': 'application/json', 'X-RapidAPI-Host': 'custom-search.p.rapidapi.com', 'X-RapidAPI-Key': "69be2150ffmsh222a28b051beacbp113c09jsn002467b93bc6"})
    list_of_articles = JSON.parse(@data.body)["value"]
    list_of_articles.each do |a|
      Article.new(title: a.title, description: a.description, content: a.body, publication_date: a.datePublished, image: a.image["url"], newspaper_id: @bbc.id)
      end
  end
end
