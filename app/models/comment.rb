class Comment < ActiveRecord::Base
  belongs_to :user

  def self.top_words
    all
  end
end