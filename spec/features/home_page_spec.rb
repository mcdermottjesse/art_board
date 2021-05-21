require 'rails_helper'

RSpec.describe "User/Visitor navigates to Art home page", type: :feature, js: true do

  before :each do
    @user = User.create! username:"Test User", password: "Password"

    
  @user.arts.create!(
    name: "Man & Gun",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1S6zA4AnyLzfpmGJdAio-mOSkDDDCpIxsFw&usqp=CAU",
    description: "Van Gogh"
  )
  
end
scenario "They can see art that has been uploaded by users on the home page" do
 
  visit "/"

  save_screenshot

  expect(page).to have_content('Man & Gun')
  expect(page).to have_content('Van Gogh')
  expect(page).to have_css 'div.img-index'

end
end