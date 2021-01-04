class Post < ApplicationRecord
  belongs_to :member
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: { maximum: 140 }
end
