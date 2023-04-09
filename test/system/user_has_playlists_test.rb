require "application_system_test_case"

class UserHasPlaylistsTest < ApplicationSystemTestCase
  setup do
    @user_has_playlist = user_has_playlists(:one)
  end

  test "visiting the index" do
    visit user_has_playlists_url
    assert_selector "h1", text: "User has playlists"
  end

  test "should create user has playlist" do
    visit user_has_playlists_url
    click_on "New user has playlist"

    fill_in "Playlist", with: @user_has_playlist.playlist_id
    fill_in "User", with: @user_has_playlist.user_id
    click_on "Create User has playlist"

    assert_text "User has playlist was successfully created"
    click_on "Back"
  end

  test "should update User has playlist" do
    visit user_has_playlist_url(@user_has_playlist)
    click_on "Edit this user has playlist", match: :first

    fill_in "Playlist", with: @user_has_playlist.playlist_id
    fill_in "User", with: @user_has_playlist.user_id
    click_on "Update User has playlist"

    assert_text "User has playlist was successfully updated"
    click_on "Back"
  end

  test "should destroy User has playlist" do
    visit user_has_playlist_url(@user_has_playlist)
    click_on "Destroy this user has playlist", match: :first

    assert_text "User has playlist was successfully destroyed"
  end
end
