class InsightlyService
  Insightly2.api_key = ENV['INSIGHTLY_API_KEY']

  class << self
    def get_contacts
      Insightly2.client.get_contacts
    end

    def get_contact(contact_id)
      Insightly2.client.get_contact(id: contact_id)
    end

    def delete_contact(contact_id)
      Insightly2.client.delete_contact(id: contact_id)
    end

    def create_contact(contact_attributes)
      Insightly2.client.create_contact(contact: contact_attributes)
    end

    def update_contact(contact_attributes)
      Insightly2.client.update_contact(contact: contact_attributes)
    end
  end
end
