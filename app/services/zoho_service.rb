require 'ruby_zoho'

class ZohoService
  RubyZoho.configure do |config|
    config.api_key = ENV['ZOHO_CRM_API_KEY']
    config.crm_modules = ['Accounts', 'Contacts', 'Leads', 'Potentials']
  end

  class << self
    def get_users
      RubyZoho::Crm::Contact.all
    end

    def new_user(user_attributes)
      new_person = RubyZoho::Crm::Contact.new(user_attributes)
      new_person.save
    end

    def get_user(id)
      RubyZoho::Crm::Contact.find(id)
    end

    def update_user(user_attributes)
      RubyZoho::Crm::Contact.update(user_attributes)
    end

    def delete_user(id)
      RubyZoho::Crm::Contact.delete(id)
    end
  end
end
