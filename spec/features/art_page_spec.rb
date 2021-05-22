require 'rails_helper'

RSpec.feature "When user signs in and are directed to art page", type: :feature, js: true do
  

  before :each do
    @user = User.create(username:"Test User", password: "Password")
    
   
    @user.arts.create!(
      name: "Portrait",
      image: "https://www.theartstory.org/images20/works/van_gogh_vincent_6.jpg?2",
      description: "Van Gogh"
    )
  end
  

  include_context 'When authenticated'
  
  scenario "User can see their own uploaded art on their art page" do
   
      expect(page).to have_content('Portrait')
      expect(page).to have_content('Van Gogh')
      expect(page).to have_css 'div.img-index'
    
      puts page.html
      save_screenshot
      end
end
