require "test_helper"

class PlaylistHasSongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playlist_has_song = playlist_has_songs(:one)
  end

  test "should get index" do
    get playlist_has_songs_url
    assert_response :success
  end

  test "should get new" do
    get new_playlist_has_song_url
    assert_response :success
  end

  test "should create playlist_has_song" do
    assert_difference("PlaylistHasSong.count") do
      post playlist_has_songs_url, params: { playlist_has_song: {  } }
    end

    assert_redirected_to playlist_has_song_url(PlaylistHasSong.last)
  end

  test "should show playlist_has_song" do
    get playlist_has_song_url(@playlist_has_song)
    assert_response :success
  end

  test "should get edit" do
    get edit_playlist_has_song_url(@playlist_has_song)
    assert_response :success
  end

  test "should update playlist_has_song" do
    patch playlist_has_song_url(@playlist_has_song), params: { playlist_has_song: {  } }
    assert_redirected_to playlist_has_song_url(@playlist_has_song)
  end

  test "should destroy playlist_has_song" do
    assert_difference("PlaylistHasSong.count", -1) do
      delete playlist_has_song_url(@playlist_has_song)
    end

    assert_redirected_to playlist_has_songs_url
  end
end
