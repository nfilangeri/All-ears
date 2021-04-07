class Topic < ApplicationRecord
  CATEGORY = ['Politics', 'Health', 'Global', 'Science', 'Education', 'Culture', 'People']
  belongs_to :user
  has_many :messages
  has_one_attached :photo
  validates :subject, presence: true
  validates :content, presence: true
  validates :category, presence: true



  def self.categories
    CATEGORY
  end
end
