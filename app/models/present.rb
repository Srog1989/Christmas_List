class Present < ApplicationRecord
    belongs_to :user
    belongs_to :recipient
    validates :name, :cost, :brand, :category, presence: true
    accepts_nested_attributes_for :recipient, reject_if: :all_blank

    # def recipient_attributes=(recipient_attributes)
    #     recipient = Recipient.find_or_create_by(recipient_attributes)
    #     self.recipient = recipient
    # end

end
