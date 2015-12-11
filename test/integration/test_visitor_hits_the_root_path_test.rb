require_relative '../test_helper'

class TestVisitorHitsTheRootPathTest < ActionDispatch::IntegrationTest

  test 'that as a user I can visit the root' do
    visit root_path
    assert_equal root_path, current_path
  end

  test 'that there is a nav bar with the links to the pages available' do
    visit root_path
    assert_equal root_path, current_path

    within ("#navbar") do
      assert page.has_content?("Blog")
      assert page.has_content?("About")
    end
  end
end
