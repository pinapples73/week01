require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../my_functions.rb')

class FunctionsTest < MiniTest::Test

  def test_greet
    #ARRANGE - set up part

    #ACT - call the function
    result = greet('Niall', 'afternoon')

    #ASSERT - test output
    assert_equal('Good afternoon, Niall', result)

  end

  def test_add
    #ARRANGE
    #ACT
    result = add(5, 6)
    #ASSERT
    assert_equal(11, result)

  end

  def test_add__negative
    #ARRANGE
    #ACT
    result = add(-2, 5)
    #ASSERT
    assert_equal(3, result)

  end

end
