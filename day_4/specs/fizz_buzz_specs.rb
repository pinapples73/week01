require('minitest/autorun')
require('minitest/rg')

require_relative('../fizz_buzz.rb')

class TestFile < MiniTest::Test

  def test_fizz_buzz_3_returns_fizz
    expected_result = 'fizz'
    actual_result = fizz_buzz(3)
    assert_equal(expected_result, actual_result)
  end

  def test_fizz_buzz_5_returns_buzz
    expected_result = 'buzz'
    actual_result = fizz_buzz(5)
    assert_equal(expected_result, actual_result)
  end

  def test_fizz_buzz_15_returns_fizz_buzz
    expected_result = 'fizz buzz'
    actual_result = fizz_buzz(15)
    assert_equal(expected_result, actual_result)
  end

  def test_fizz_buzz_2_returns_2
    expected_result = '2'
    actual_result = fizz_buzz(2)
    assert_equal(expected_result, actual_result)
  end


end
