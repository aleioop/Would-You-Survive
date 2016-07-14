class Result < ActiveRecord::Base
  has_many :comments

  def self.random_result(era_id)
    where(era_id: era_id)
  end
end