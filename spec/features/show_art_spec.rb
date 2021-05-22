require 'rails_helper'

RSpec.feature "Visitor/User views art", type: :feature, js: true do
  
  before :each do
    @user = User.create(username:"Test User", password: "Password")
    
   
    @user.arts.create!(
      name: "Face",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0FJLA3jJgXVez5eQeWBCbJYrlbRtqvKKOUA&usqp=CAU",
      description: "Salvador Dali"
    )
  end

  include_context 'When authenticated'
  scenario "User can view art" do
   
    visit "/"
    click_on("View")
    expect(page).to have_content('Face')
    expect(page).to have_content('Salvador Dali')
    expect(page).to have_css 'div.img'
  
    puts page.html
    save_screenshot
    end
end
