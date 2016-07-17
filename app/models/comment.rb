class Comment < ActiveRecord::Base
  belongs_to :user
  before_save :zero_vote

  def self.top_words
    all
  end

  private
    def zero_vote
      self.vote ||= 0
    end
end