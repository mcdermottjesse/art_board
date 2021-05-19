require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "User Validations" do

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




  end
end
