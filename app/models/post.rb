class Post < ApplicationRecord
  belongs_to :member
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: { maximum: 140 }
  scope :most_recent_first, -> { order(created_at: :desc) }
end
