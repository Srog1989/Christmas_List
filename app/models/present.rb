class Present < ApplicationRecord
    belongs_to :user
    belongs_to :recipient
    # accepts_nested_attributes_for :recipient

    def recipient_attributes=(recipient_attributes)
        recipient = Recipient.find_or_create_by(recipient_attributes)
        self.recipient = recipient
    end

end
