require 'test_helper'

class SongTest < ActiveSupport::TestCase

  test "should not save without trackId" do
    song = Song.new
    assert_not song.save
  end

  test "trending_songs returns the 3 most liked songs" do
    assert_equal 3, Song.trending_songs.length
  end

  test "find_or_create_by_track_id takes MusixMatch API data as input and searches DB for song. It creates a new Song if it doesn't exist" do
    new_song_data = {"track"=>
  {"track_id"=>123456333,
   "track_name"=>"Made Up Song",
   "track_name_translation_list"=>[],
   "track_rating"=>80,
   "commontrack_id"=>95543116,
   "instrumental"=>0,
   "explicit"=>1,
   "has_lyrics"=>1,
   "has_subtitles"=>1,
   "has_richsync"=>0,
   "num_favourite"=>9,
   "album_id"=>32472628,
   "album_name"=>"Ostia Lido",
   "artist_id"=>261397,
   "artist_name"=>"J-Ax",
   "track_share_url"=>
    "https://www.musixmatch.com/lyrics/J-AX/Ostia-lido?utm_source=application&utm_campaign=api&utm_medium=Flatiron+Student%3A1409618370548",
   "track_edit_url"=>
    "https://www.musixmatch.com/lyrics/J-AX/Ostia-lido/edit?utm_source=application&utm_campaign=api&utm_medium=Flatiron+Student%3A1409618370548",
   "restricted"=>0,
   "updated_time"=>"2019-05-21T09:58:43Z",
   "primary_genres"=>
    {"music_genre_list"=>
      [{"music_genre"=>
         {"music_genre_id"=>18,
          "music_genre_parent_id"=>34,
          "music_genre_name"=>"Hip Hop/Rap",
          "music_genre_name_extended"=>"Hip Hop/Rap",
          "music_genre_vanity"=>"Hip-Hop-Rap"}}]}}}

    result = Song.find_or_create_by_track_id(new_song_data)
    assert_instance_of Song, result


    exisiting_song_data =  {"track"=>
  {"track_id"=>170314276,
   "track_name"=>"Ostia Lido",
   "track_name_translation_list"=>[],
   "track_rating"=>80,
   "commontrack_id"=>95543116,
   "instrumental"=>0,
   "explicit"=>1,
   "has_lyrics"=>1,
   "has_subtitles"=>1,
   "has_richsync"=>0,
   "num_favourite"=>9,
   "album_id"=>32472628,
   "album_name"=>"Ostia Lido",
   "artist_id"=>261397,
   "artist_name"=>"J-Ax",
   "track_share_url"=>
    "https://www.musixmatch.com/lyrics/J-AX/Ostia-lido?utm_source=application&utm_campaign=api&utm_medium=Flatiron+Student%3A1409618370548",
   "track_edit_url"=>
    "https://www.musixmatch.com/lyrics/J-AX/Ostia-lido/edit?utm_source=application&utm_campaign=api&utm_medium=Flatiron+Student%3A1409618370548",
   "restricted"=>0,
   "updated_time"=>"2019-05-21T09:58:43Z",
   "primary_genres"=>
    {"music_genre_list"=>
      [{"music_genre"=>
         {"music_genre_id"=>18,
          "music_genre_parent_id"=>34,
          "music_genre_name"=>"Hip Hop/Rap",
          "music_genre_name_extended"=>"Hip Hop/Rap",
          "music_genre_vanity"=>"Hip-Hop-Rap"}}]}}}

    result_before_method = Song.find_by(track_id: 170314276)
    result = Song.find_or_create_by_track_id(exisiting_song_data)

    assert_equal result_before_method, result
  end
end
