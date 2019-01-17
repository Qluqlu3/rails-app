class Diary < ApplicationRecord
  has_secure_token :id
  belongs_to :user
  has_many :diary_goods
  has_many :diary_comments
  validates :content, presence: true
  validates :user_id, presence: true
end
