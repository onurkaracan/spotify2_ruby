class UserHasPlaylistsController < ApplicationController
  before_action :set_user_has_playlist, only: %i[ show edit update destroy ]

  # GET /user_has_playlists or /user_has_playlists.json
  def index
    @user_has_playlists = UserHasPlaylist.all
  end

  # GET /user_has_playlists/1 or /user_has_playlists/1.json
  def show
  end

  # GET /user_has_playlists/new
  def new
    @user_has_playlist = UserHasPlaylist.new
  end

  # GET /user_has_playlists/1/edit
  def edit
  end

  # POST /user_has_playlists or /user_has_playlists.json
  def create
    @user_has_playlist = UserHasPlaylist.new(user_has_playlist_params)

    respond_to do |format|
      if @user_has_playlist.save
        format.html { redirect_to user_has_playlist_url(@user_has_playlist), notice: "User has playlist was successfully created." }
        format.json { render :show, status: :created, location: @user_has_playlist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_has_playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_has_playlists/1 or /user_has_playlists/1.json
  def update
    respond_to do |format|
      if @user_has_playlist.update(user_has_playlist_params)
        format.html { redirect_to user_has_playlist_url(@user_has_playlist), notice: "User has playlist was successfully updated." }
        format.json { render :show, status: :ok, location: @user_has_playlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_has_playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_has_playlists/1 or /user_has_playlists/1.json
  def destroy
    @user_has_playlist.destroy

    respond_to do |format|
      format.html { redirect_to user_has_playlists_url, notice: "User has playlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_has_playlist
      @user_has_playlist = UserHasPlaylist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_has_playlist_params
      params.require(:user_has_playlist).permit(:user_id, :playlist_id)
    end
end
