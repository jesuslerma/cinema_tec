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
    m = movies(:batman_vs_superman)
    m.name = nil
    assert_not m.valid?, 'A new movie must have a name'
  end

  test 'movie with repeated name must be invalid' do
    Movie.create(name: "Piratas de Silicon Valley")
    m = Movie.new(name:"Piratas de Silicon Valley")
    assert_not m.valid?, 'Movie name can\'t be repeated'
  end

  test "movie has rankings" do    
    assert_includes @movie.ranking, rankings(:one), "Batman vs superman movie should have one ranking"
  end
end
