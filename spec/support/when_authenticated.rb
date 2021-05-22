RSpec.shared_context 'When authenticated' do
  background do
    authenticate
  end

  def authenticate
    visit '/sessions/new'
    within('.user_login') do
      fill_in 'Username', :with => 'Test User'
      fill_in 'Password', :with => 'Password'
    end
    click_button 'Sign In'
  end
end