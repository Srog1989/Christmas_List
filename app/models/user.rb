class User < ApplicationRecord
    has_many :presents
    has_many :recipients, through: :presents
end