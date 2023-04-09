require "test_helper"

class UserHasPlaylistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_has_playlist = user_has_playlists(:one)
  end

  test "should get index" do
    get user_has_playlists_url
    assert_response :success
  end

  test "should get new" do
    get new_user_has_playlist_url
    assert_response :success
  end

  test "should create user_has_playlist" do
    assert_difference("UserHasPlaylist.count") do
      post user_has_playlists_url, params: { user_has_playlist: { playlist_id: @user_has_playlist.playlist_id, user_id: @user_has_playlist.user_id } }
    end

    assert_redirected_to user_has_playlist_url(UserHasPlaylist.last)
  end

  test "should show user_has_playlist" do
    get user_has_playlist_url(@user_has_playlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_has_playlist_url(@user_has_playlist)
    assert_response :success
  end

  test "should update user_has_playlist" do
    patch user_has_playlist_url(@user_has_playlist), params: { user_has_playlist: { playlist_id: @user_has_playlist.playlist_id, user_id: @user_has_playlist.user_id } }
    assert_redirected_to user_has_playlist_url(@user_has_playlist)
  end

  test "should destroy user_has_playlist" do
    assert_difference("UserHasPlaylist.count", -1) do
      delete user_has_playlist_url(@user_has_playlist)
    end

    assert_redirected_to user_has_playlists_url
  end
end
