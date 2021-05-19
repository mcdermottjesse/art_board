require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "Create User Validations" do

  context "needs username and password" do
    it "should create a user" do
      @user = User.create(username: "Username", password: "Password")
      expect(@user).to be_valid
    end
  end

  context "if no username" do
    it "should not create a user" do
      @user = User.create(username: nil, password: "Password")
      expect(@user).to_not be_valid
    end
  end

context "if no password" do
  it "should not create a user" do
    @user = User.create(username: "Username", password: nil)
    expect(@user).to_not be_valid
  end
end

context "if password is less than 5 characters" do
  it "should not create a user" do
    @user = User.create(username: "Username", password: "Pass")
    expect(@user).to_not be_valid
  end
end

context "if userneame is less than 5 characters" do
  it "should not create a user" do
    @user = User.create(username: "User", password: "Password")
    expect(@user).to_not be_valid
  end
end
end

describe "Valid Login Credentials" do

  context "needs useranme and password" do
    it "should login user" do
      @user = User.first_or_create(username: "Username", password: "Password")
      expect(@user).to be_valid
    end
  end

  context "if username is not present" do
    it "should not login user" do
    @user = User.first_or_create(username: nil, password: "Password")
  expect(@user).to_not be_valid
  end
  end

  context "if password is not present" do
    it "should not login user" do
      @user = User.first_or_create(username: "Username", password: nil)
      expect(@user).to_not be_valid
    end
  end

  context "if username is less than 5 characters" do
  it "it should not login user" do
    @user = User.first_or_create(username: "User", password: "Password")
    expect(@user).to_not be_valid
  end
end

context "if password is less than 5 characters" do
  it "it should not login user" do
    @user = User.first_or_create(username: "Username", password: "Pass")
    expect(@user).to_not be_valid
  end
end

  end
end
