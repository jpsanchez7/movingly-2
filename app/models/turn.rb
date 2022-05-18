class Turn < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :users_requests, through: :requets, source: :user
end
