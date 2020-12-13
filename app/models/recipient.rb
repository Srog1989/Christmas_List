class Recipient < ApplicationRecord
    has_many :presents
	has_many :users, through :presents
end
