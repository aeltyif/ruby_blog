class Post < ApplicationRecord
  extend FriendlyId
  belongs_to :user
  validates_presence_of :title, :body
  friendly_id :title, use: :slugged
end
