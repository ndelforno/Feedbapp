class Request < ApplicationRecord
  has_many :responses
  has_many :choices
  belongs_to :user
  has_one_attached :image

  def total_responses()
    return self.responses.length
  end
end
