require 'rails_helper'

RSpec.feature "User/Visitor navigates to Art home page", type: :feature, js: true do

before :each do
  @user = User.create! username:"Test User", password: "Password"
 
  @user.arts.create!(
    name: "In Thought",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxAKQ_Wafp303ZqqiDhz7bd9sfyWvCHraaRw&usqp=CAU",
    description: "Picasso Painting"
  )
end

scenario "They can see art that has been uploaded by users on the home page" do
 
  visit homepage_path

  expect(page).to have_content('In Thought')
  expect(page).to have_content('Picasso Painting')
  expect(page).to have_css 'div.img-index'

  puts page.html
  save_screenshot
  end
end