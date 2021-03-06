require 'pry'
require 'faraday'
require 'faraday_middleware'

class SongsController < ApplicationController
  def index
    @songs = Song.all

    render json: @songs
  end

  def update_likes
    @song = Song.find_or_create_by_track_id(params[:song])
    @song.update(likes: @song.likes + 1) if @song
  end

  def update_likes_from_home
    @song = Song.find_by(track_id: params[:song][:track_id])
    @song.update(likes: @song.likes + 1) if @song
  end

  def trending_songs
    @songs = Song.trending_songs
    render json: @songs
  end

  def popular_songs
    url = 'http://api.musixmatch.com/ws/1.1/chart.tracks.get?chart_name=top&page=1&page_size=6&country=it&f_has_lyrics=1&apikey=523ebe747e1a258aaddd09f97f90cb70'

    conn = Faraday.new(url: url) do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.response :json
    end
    response = conn.get
    response.body
    track_list = response.body["message"]["body"]["track_list"]

    @songs = []
    track_list.each {|song| @songs << Song.find_or_create_by_track_id(song)}
    render json: @songs
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def song_params
      params.fetch(:song, {})
    end
end
