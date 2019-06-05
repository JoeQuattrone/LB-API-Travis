require 'test_helper'
require 'pry'
class SongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song = songs(:one)
  end

  test "should get index" do
    get songs_url, as: :json
    assert_response :success
  end

  test "should get popular_songs" do
    get popular_songs_url, as: :json

    assert_response :success
  end

  test 'should update likes of given song' do
    exisiting_song_data = {"track"=>{"id"=>1, "artist_name"=>"Eminem", "track_id"=>1809819, "track_name"=>"Lose Yourself", "genre"=>"Alternative Rap", "likes"=>29, "created_at"=>"2019-05-07T19:28:38.690Z", "updated_at"=>"2019-06-04T14:44:56.307Z"}}

    @song = Song.find_by(track_id: exisiting_song_data["track"]["track_id"])
    likes = exisiting_song_data["track"]["likes"]
    
    post update_likes_url, params: { song: exisiting_song_data}, as: :json
    assert_response 204
    assert_equal likes + 1, @song.likes
  end

  # test "should create song" do
  #   assert_difference('Song.count') do
  #     post songs_url, params: { song: {  } }, as: :json
  #   end
  #
  #   assert_response 201
  # end

  # test "should show song" do
  #   get song_url(@song), as: :json
  #   assert_response :success
  # end

  # test "should update song" do
  #   patch song_url(@song), params: { song: {  } }, as: :json
  #   assert_response 200
  # end

  # test "should destroy song" do
  #   assert_difference('Song.count', -1) do
  #     delete song_url(@song), as: :json
  #   end
  #
  #   assert_response 204
  # end
end
