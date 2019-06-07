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
end
