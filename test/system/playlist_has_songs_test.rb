require "application_system_test_case"

class PlaylistHasSongsTest < ApplicationSystemTestCase
  setup do
    @playlist_has_song = playlist_has_songs(:one)
  end

  test "visiting the index" do
    visit playlist_has_songs_url
    assert_selector "h1", text: "Playlist has songs"
  end

  test "should create playlist has song" do
    visit playlist_has_songs_url
    click_on "New playlist has song"

    click_on "Create Playlist has song"

    assert_text "Playlist has song was successfully created"
    click_on "Back"
  end

  test "should update Playlist has song" do
    visit playlist_has_song_url(@playlist_has_song)
    click_on "Edit this playlist has song", match: :first

    click_on "Update Playlist has song"

    assert_text "Playlist has song was successfully updated"
    click_on "Back"
  end

  test "should destroy Playlist has song" do
    visit playlist_has_song_url(@playlist_has_song)
    click_on "Destroy this playlist has song", match: :first

    assert_text "Playlist has song was successfully destroyed"
  end
end
