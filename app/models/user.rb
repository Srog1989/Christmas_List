class User < ApplicationRecord
    has_many :presents
    has_many :recipients, through: :presents
    has_secure_password
    validates :email, uniqueness: true, presence: true
end