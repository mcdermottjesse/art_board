require 'rails_helper'

RSpec.describe Art, type: :model do
  
  describe 'Validations' do
    before (:all) do
      @art = Art.new
end

context "needs all art fields to be filled" do
  it "is filled in all fields" do
    art = Art.new(
    name: "string",
    image: "string",
    description: "string"
    )
    @art.save
    expect(art).to be_present
  end
end

context "art needs a name" do
  it "is given a name" do
    @art.name = nil
    @art.validate
    expect(@art.errors[:name]).to include("can't be blank")

    @art.name = "string"
    @art.validate
    expect(@art.errors[:name]).to_not include("can't be blank")
end
end

context "art needs an image url" do
  it "is given an image url" do
    @art.image = nil
    @art.validate
    expect(@art.errors[:image]).to include("can't be blank")

    @art.image = "string"
    @art.validate
    expect(@art.errors[:image]).to_not include("can't be blank")
  end
end

context "art needs a description" do
  it "is given a description" do
    @art.description = nil
    @art.validate
    expect(@art.errors[:description]).to include("can't be blank")

    @art.description = "string"
    @art.validate
    expect(@art.errors[:description]).to_not include("can't be blank")

  end
end

context "art name can be no more than 10 characters" do
  it "is given a name less than 10 characters" do
    @art.name = "more than ten"
    @art.validate
    expect(@art.errors[:name]).to include("is too long (maximum is 10 characters)")
  end
end

context "art description can be no more than 25 characters" do
  it "is given a description less than 25 characters" do
    @art.description = "string is more than 25 char"
    @art.validate
    expect(@art.errors[:description]).to include("is too long (maximum is 25 characters)")
  end
end
end
end