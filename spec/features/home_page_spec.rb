require 'rails_helper'

RSpec.describe "User/Visitor navigates to Art home page", type: :feature, js: true do

  @art = Art.new(
    name: 'Art',
    image: 'https://bit.ly/2ScUSxi',
    description: 'Picasso Art'
  )
  





scenario "They can see art that has been uploaded by users on the home page" do
 
  visit "/"

  save_screenshot

  expect(page).to have_css 'div.title'

end
end