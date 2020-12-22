class Recipient < ApplicationRecord
    has_many :presents
    has_many :users, through: :presents
    validates :email, uniqueness: true, presence: true
    validates :name, presence: true
    
end
