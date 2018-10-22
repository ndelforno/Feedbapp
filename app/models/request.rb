class Request < ApplicationRecord
  has_many :responses
  has_many :choices
  belongs_to :user
end
