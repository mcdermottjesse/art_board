require "application_system_test_case"

class ArtControllerTest < ApplicationSystemTestCase

  test "visit my art" do
  sign_in users(:one)
  visit art_index_path
  assert_selector "h1", text: "Art"
   
  end
end
