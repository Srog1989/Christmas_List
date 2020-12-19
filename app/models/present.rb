class Present < ApplicationRecord
    belongs_to :user
    belongs_to :recipient
    #accepts_nested_attributes_for :recipients

    def recipients_attributes=(recipient_attributes)
        recipient_attributes.values.each do |recipient_attribute|
        recipient = Recipient.find_or_create_by(recipient_attribute)
        self.recipients << recipient
        end
    end

end
