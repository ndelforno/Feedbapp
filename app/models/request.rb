class Request < ApplicationRecord
  has_many :responses
  belongs_to :user
end
