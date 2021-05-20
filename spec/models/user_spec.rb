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

describe '.authenticate_with_credentials' do

  context "needs useranme and password" do
    it "should login user" do
      @user = User.create(username: "Username", password: "Password")
      @user = User.authenticate_with_credentials("Username", "Password")
      expect(@user).to_not be(nil)
    end
  end

  context "if username is not present" do
    it "should not login user" do
    @user = User.create(username: "Username", password: "Password")
    @user = User.authenticate_with_credentials("", "Password")
  expect(@user).to be(nil)
  end
  end

  context "if password is not present" do
    it "should not login user" do
      @user = User.create(username: "Username", password: "Password")
      @user = User.authenticate_with_credentials("Username", "")
      expect(@user).to be(nil)
    end
  end

context "is case sensitive" do
it "should not login user" do
  @user = User.create(username: "Username", password: "Password")
  @user = User.authenticate_with_credentials("username", "Password")
  expect(@user).to be(nil)
end
end


  end
end
