require 'test_helper'

class DeckbrowserControllerTest < ActionDispatch::IntegrationTest
  test "should get browse_decks" do
    get deckbrowser_browse_decks_url
    assert_response :success
  end

end
