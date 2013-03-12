require "simplecov"
SimpleCov.start

require 'test/unit'
require_relative 'piglatin_converter'

class TestAdd < Test::Unit::TestCase
  def test_base_case_short
  	assert_equal "igpay", PiglatinConverter.convert("pig")
  end

  def test_base_case_long
  	assert_equal "omputercay", PiglatinConverter.convert("computer")
  end

  def test_two_cons
  	assert_equal "eedomfray", PiglatinConverter.convert("freedom")
  end

  def test_three_cons
  	assert_equal "ingstray", PiglatinConverter.convert("string")
  end

  def test_capitalize
  	assert_equal "ingstray", PiglatinConverter.convert("String")
  end

  def test_vowels
  	assert_equal "eightay", PiglatinConverter.convert("eight")
  end

  def test_capital_letter	
  	assert_equal "ingstray", PiglatinConverter.convert("StrinG")
  end

  def test_empty_string
  	assert_equal "", PiglatinConverter.convert("")
  end

  def test_spaced_string
  	assert_equal "Please enter only one word", PiglatinConverter.convert("Jonas is Awesome")
  end

  def test_nil
  	assert_equal nil, PiglatinConverter.convert(nil)
  end

  def test_number
  	assert_equal "Input a word!", PiglatinConverter.convert(1234)
  end
end