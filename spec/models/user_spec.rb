require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do 

    it 'is valid with matching password and password_confirmation fields' do
      @user = User.new(name: "Chicken", email: "1@1.com", password:"pollo1", password_confirmation:"pollo1")
      expect(@user).to be_valid
    end

    it 'is invalid with non-matching password and password_confirmation fields' do
      @user = User.new(name: "Chicken", email: "1@1.com", password:"poulet", password_confirmation:"pollo")
      expect(@user).to_not be_valid
    end

    it 'is valid with unique emails' do 
      @user1 = User.new(name: "Chicken", email: "1@1.com", password:"pollo1", password_confirmation:"pollo1")
      @user2 = User.new(name: "Chicken", email: "2@1.com", password:"pollo1", password_confirmation:"pollo1")
      expect(@user1).to be_valid
      expect(@user2).to be_valid
    end

    it 'is invalid with repeated emails' do 
      @user1 = User.new(name: "Chicken", email: "1@1.com", password:"pollo1", password_confirmation:"pollo1")
      expect(@user1).to be_valid
      @user1.save!
      @user2 = User.new(name: "Chicken", email: "1@1.com", password:"pollo1", password_confirmation:"pollo1")
      expect(@user2).to_not be_valid
    end

    it 'requires emails, first name and last name' do
    end

    it 'must have a minimum password length when a user account is being created' do
      @user = User.new(name: "Chicken", email: "1@1.com", password:"four", password_confirmation:"pollo")
      expect(@user).to_not be_valid
    end

    it 'must login and ignore leading and trailing spaces for e-mails' do
    end

    it 'must login and be case insensitive for e-mails' do
    end

  end
end
