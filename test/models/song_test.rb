require 'test_helper'

class SongTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save without without trackId" do
    song = Song.new
    assert_not song.save
  end
end
