class Rating < ApplicationRecord
  belongs_to :article
  belongs_to :user
  validates :article_id, uniqueness: { scope: :user_id, message: "You've already placed your scale!" }
end
