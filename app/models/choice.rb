class Choice < ApplicationRecord
  belongs_to :request
  has_many :responses
end
