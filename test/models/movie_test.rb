require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test 'movie without name must be invalid' do
    m = Movie.new name:nil
    assert_not m.valid?
  end
end
