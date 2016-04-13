require 'test_helper'

class RankingTest < ActiveSupport::TestCase
  test "ranking has movie" do
    assert_not_nil rankings(:one).movie, "Ranking one should have a movie"
  end
end
