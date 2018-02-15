require 'test_helper'

class OscarFemaleWinnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oscar_female_winner = oscar_female_winners(:one)
  end

  test "should get index" do
    get oscar_female_winners_url
    assert_response :success
  end

  test "should get new" do
    get new_oscar_female_winner_url
    assert_response :success
  end

  test "should create oscar_female_winner" do
    assert_difference('OscarFemaleWinner.count') do
      post oscar_female_winners_url, params: { oscar_female_winner: { age: @oscar_female_winner.age, movie: @oscar_female_winner.movie, name: @oscar_female_winner.name, year: @oscar_female_winner.year } }
    end

    assert_redirected_to oscar_female_winner_url(OscarFemaleWinner.last)
  end

  test "should show oscar_female_winner" do
    get oscar_female_winner_url(@oscar_female_winner)
    assert_response :success
  end

  test "should get edit" do
    get edit_oscar_female_winner_url(@oscar_female_winner)
    assert_response :success
  end

  test "should update oscar_female_winner" do
    patch oscar_female_winner_url(@oscar_female_winner), params: { oscar_female_winner: { age: @oscar_female_winner.age, movie: @oscar_female_winner.movie, name: @oscar_female_winner.name, year: @oscar_female_winner.year } }
    assert_redirected_to oscar_female_winner_url(@oscar_female_winner)
  end

  test "should destroy oscar_female_winner" do
    assert_difference('OscarFemaleWinner.count', -1) do
      delete oscar_female_winner_url(@oscar_female_winner)
    end

    assert_redirected_to oscar_female_winners_url
  end
end
