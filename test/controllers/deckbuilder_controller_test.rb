require 'test_helper'

class DeckbuilderControllerTest < ActionDispatch::IntegrationTest
  test "should get create_deck" do
    get deckbuilder_create_deck_url
    assert_response :success
  end

end
