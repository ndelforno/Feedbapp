class Response < ApplicationRecord
  belongs_to :user
  belongs_to :request
  belongs_to :choice 
end
