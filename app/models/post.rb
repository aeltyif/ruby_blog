class Post < ApplicationRecord
  extend FriendlyId
  belongs_to :user
  validates_presence_of :title, :body
  friendly_id :title, use: :slugged
  after_commit :flush_cache


  def self.cached_post(id)
    Rails.cache.fetch([name, id]) { friendly.find(id) }
  end

  private
  # Flushing the cache for the posts
  def flush_cache
    Rails.cache.clear
  end
end
