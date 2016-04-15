require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test 'movie without name must be invalid' do
  #   m = Movie.new name:nil
  #   assert_not m.valid?
  # end
  def setup
    @movie = movies(:batman_vs_superman)
  end
  test 'movie without name must be invalid' do
    @movie.name = nil
    assert_not @movie.valid?, 'A new movie must have a name'
  end

  test 'movie with repeated name must be invalid' do
    m = Movie.new(name: @movie.name)
    assert_not m.valid?, 'Movie name can\'t be repeated'
  end

  test "movie has rankings" do    
    assert_includes @movie.ranking, rankings(:one), "Batman vs superman movie should have one ranking"
  end

  test 'deleting ranks on cascade' do
    @movie.destroy
    assert_empty Ranking.where(movie: @movie.id)
  end
end
