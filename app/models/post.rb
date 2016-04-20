class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true

  validates :title, length: { minimum: 10 }
  validates :body, length: { minimum: 30 }

  has_many :comments
end
