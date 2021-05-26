require 'rails_helper'


RSpec.describe "ArtControllerSpec", :type, :request do
  

  it "go to home page" do
  
    
  get art_path

  expect(response.body).to render_template(:index)
  end
end
