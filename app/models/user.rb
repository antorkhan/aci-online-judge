class User < ApplicationRecord
  has_secure_password
  has_many :user_submission
  validates :email, presence: true, uniqueness: true
  validates :first_name,:last_name,:password_digest, presence: true
end
