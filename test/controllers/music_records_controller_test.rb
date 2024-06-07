require 'test_helper'

class MusicRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get music_records_index_url
    assert_response :success
  end

  test "should get show" do
    get music_records_show_url
    assert_response :success
  end

end
