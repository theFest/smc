require "application_system_test_case"

class MyMovieCollectionsTest < ApplicationSystemTestCase
  setup do
    @my_movie_collection = my_movie_collections(:one)
  end

  test "visiting the index" do
    visit my_movie_collections_url
    assert_selector "h1", text: "My Movie Collections"
  end

  test "creating a My movie collection" do
    visit my_movie_collections_url
    click_on "New My Movie Collection"

    fill_in "Description", with: @my_movie_collection.description
    fill_in "Director", with: @my_movie_collection.director
    fill_in "Lenght", with: @my_movie_collection.lenght
    fill_in "Rating", with: @my_movie_collection.rating
    fill_in "Title", with: @my_movie_collection.title
    fill_in "Year", with: @my_movie_collection.year
    click_on "Create My movie collection"

    assert_text "My movie collection was successfully created"
    click_on "Back"
  end

  test "updating a My movie collection" do
    visit my_movie_collections_url
    click_on "Edit", match: :first

    fill_in "Description", with: @my_movie_collection.description
    fill_in "Director", with: @my_movie_collection.director
    fill_in "Lenght", with: @my_movie_collection.lenght
    fill_in "Rating", with: @my_movie_collection.rating
    fill_in "Title", with: @my_movie_collection.title
    fill_in "Year", with: @my_movie_collection.year
    click_on "Update My movie collection"

    assert_text "My movie collection was successfully updated"
    click_on "Back"
  end

  test "destroying a My movie collection" do
    visit my_movie_collections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My movie collection was successfully destroyed"
  end
end
