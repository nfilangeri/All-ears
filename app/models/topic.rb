class Topic < ApplicationRecord
  CATEGORY = ['Politics', 'Health', 'Global', 'Science', 'Education', 'Culture', 'People']
  belongs_to :user
  has_many :messages
  has_one_attached :photo

end
