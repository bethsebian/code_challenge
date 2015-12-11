require_relative 'taylor_saves'
require 'minitest/autorun'

class TaylorTest < Minitest::Test

  def test_it_can_strip_punctuation_from_a_line_of_text
    text = Taylor.new
    string = (['this is a weird thing "thing" for things'])
    expected = ['this is a weird thing thing for things']

    assert_equal expected, text.strip(string)
  end

  def test_it_can_read_a_line_and_strip_text
    text = Taylor.new
    text_file = './swift_stats/test.txt'
    expected = "I said That's a lie."

    assert_equal expected, text.read_and_strip(text_file)
end
end

