class Comment < ActiveRecord::Base
  validates :name, presence: true
  validates :body, presence: true

  validates :name, length: { minimum: 15 }
  validates :body, length: { minimum: 30 }

  belongs_to :post
end
