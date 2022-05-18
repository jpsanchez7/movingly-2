class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :turns
         has_many :reviews
         has_many :requests
         has_many :turns_requests, through: :requests, source: :turn
end
