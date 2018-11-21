class Choice < ApplicationRecord
  belongs_to :request
  has_many :responses

  validates :choice_text, presence: true

end
