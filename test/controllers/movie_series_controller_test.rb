require "test_helper"

class MovieSeriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_series = movie_series(:one)
  end

  test "should get index" do
    get movie_series_url, as: :json
    assert_response :success
  end

  test "should create movie_series" do
    assert_difference('MovieSerie.count') do
      post movie_series_url, params: { movie_series: { create_date: @movie_series.create_date, gender: @movie_series.gender, image: @movie_series.image, qualification: @movie_series.qualification, title: @movie_series.title } }, as: :json
    end

    assert_response 201
  end

  test "should show movie_series" do
    get movie_series_url(@movie_series), as: :json
    assert_response :success
  end

  test "should update movie_series" do
    patch movie_series_url(@movie_series), params: { movie_series: { create_date: @movie_series.create_date, gender: @movie_series.gender, image: @movie_series.image, qualification: @movie_series.qualification, title: @movie_series.title } }, as: :json
    assert_response 200
  end

  test "should destroy movie_series" do
    assert_difference('MovieSerie.count', -1) do
      delete movie_series_url(@movie_series), as: :json
    end

    assert_response 204
  end
end
