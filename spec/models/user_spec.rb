require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do 

    it 'is valid with matching password and password_confirmation fields' do
    end

    it 'is invalid with non-matching password and password_confirmation fields' do
    end

    it 'is valid with unique emails' do 
    end

    it 'is invalid with repeated emails' do 
    end

    it 'requires emails, first name and last name' do
    end

    it 'must have a minimum password length when a user account is being created' do
    end

    it 'must ignore leading and trailing spaces for e-mails' do
    end

    it 'must be case insensitive for e-mails' do
    end

  end
end
