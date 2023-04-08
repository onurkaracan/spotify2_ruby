class PlaylistHasSongsController < ApplicationController
  before_action :set_playlist_has_song, only: %i[ show edit update destroy ]

  # GET /playlist_has_songs or /playlist_has_songs.json
  def index
    @playlist_has_songs = PlaylistHasSong.all
  end

  # GET /playlist_has_songs/1 or /playlist_has_songs/1.json
  def show
  end

  # GET /playlist_has_songs/new
  def new
    @playlist_has_song = PlaylistHasSong.new
  end

  # GET /playlist_has_songs/1/edit
  def edit
  end

  # POST /playlist_has_songs or /playlist_has_songs.json
  def create
    @playlist_has_song = PlaylistHasSong.new(playlist_has_song_params)

    respond_to do |format|
      if @playlist_has_song.save
        format.html { redirect_to playlist_has_song_url(@playlist_has_song), notice: "Playlist has song was successfully created." }
        format.json { render :show, status: :created, location: @playlist_has_song }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @playlist_has_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlist_has_songs/1 or /playlist_has_songs/1.json
  def update
    respond_to do |format|
      if @playlist_has_song.update(playlist_has_song_params)
        format.html { redirect_to playlist_has_song_url(@playlist_has_song), notice: "Playlist has song was successfully updated." }
        format.json { render :show, status: :ok, location: @playlist_has_song }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @playlist_has_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlist_has_songs/1 or /playlist_has_songs/1.json
  def destroy
    @playlist_has_song.destroy

    respond_to do |format|
      format.html { redirect_to playlist_has_songs_url, notice: "Playlist has song was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist_has_song
      @playlist_has_song = PlaylistHasSong.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def playlist_has_song_params
      params.fetch(:playlist_has_song, {})
    end
end
