require 'test_helper'

class DeckviewerControllerTest < ActionDispatch::IntegrationTest
  test "should get show_deck" do
    get deckviewer_show_deck_url
    assert_response :success
  end

end
