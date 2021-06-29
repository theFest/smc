require "test_helper"

class MyMovieCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_movie_collection = my_movie_collections(:one)
  end

  test "should get index" do
    get my_movie_collections_url
    assert_response :success
  end

  test "should get new" do
    get new_my_movie_collection_url
    assert_response :success
  end

  test "should create my_movie_collection" do
    assert_difference('MyMovieCollection.count') do
      post my_movie_collections_url, params: { my_movie_collection: { description: @my_movie_collection.description, director: @my_movie_collection.director, lenght: @my_movie_collection.lenght, rating: @my_movie_collection.rating, title: @my_movie_collection.title, year: @my_movie_collection.year } }
    end

    assert_redirected_to my_movie_collection_url(MyMovieCollection.last)
  end

  test "should show my_movie_collection" do
    get my_movie_collection_url(@my_movie_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_movie_collection_url(@my_movie_collection)
    assert_response :success
  end

  test "should update my_movie_collection" do
    patch my_movie_collection_url(@my_movie_collection), params: { my_movie_collection: { description: @my_movie_collection.description, director: @my_movie_collection.director, lenght: @my_movie_collection.lenght, rating: @my_movie_collection.rating, title: @my_movie_collection.title, year: @my_movie_collection.year } }
    assert_redirected_to my_movie_collection_url(@my_movie_collection)
  end

  test "should destroy my_movie_collection" do
    assert_difference('MyMovieCollection.count', -1) do
      delete my_movie_collection_url(@my_movie_collection)
    end

    assert_redirected_to my_movie_collections_url
  end
end
