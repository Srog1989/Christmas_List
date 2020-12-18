class Present < ApplicationRecord
    belongs_to :user
    belongs_to :recipient
    accepts_nested_attributes_for :recipient
end
