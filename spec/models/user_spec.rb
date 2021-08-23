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

    it 'is invalid with repeated emails (case insensitive)' do 
      @user1 = User.new(name: "Chicken", email: "a@1.com", password:"pollo1", password_confirmation:"pollo1")
      expect(@user1).to be_valid
      @user1.save!
      @user2 = User.new(name: "Chicken", email: "A@1.com", password:"pollo1", password_confirmation:"pollo1")
      expect(@user2).to_not be_valid
    end

    it 'requires email and name' do
      @user1 = User.new(name: nil, email: "1@1.com", password:"poulet", password_confirmation:"poulet")
      expect(@user1).to_not be_valid
      @user2 = User.new(name: "Chicken", email: nil, password:"poulet", password_confirmation:"poulet")
      expect(@user2).to_not be_valid
    end

    it 'must have a minimum password length of 6 when a user account is being created' do
      @user = User.new(name: "Chicken", email: "1@1.com", password:"four", password_confirmation:"pollo")
      expect(@user).to_not be_valid
    end

  end
  
  describe '.authenticate_with_credentials' do

    it 'must login when a registered user provides the correct email and password' do
    end

    it 'must not login when an incorrect email or password is provided' do
    end

    it 'must login and ignore leading and trailing spaces for e-mails' do
    end

    it 'must login and be case insensitive for e-mails' do
    end

  end

end
