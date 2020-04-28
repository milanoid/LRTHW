require 'ex49/parser.rb'
require 'test/unit'

class TestParser < Test::Unit::TestCase



  def test_parse_sentence()
    word_list = [['stop', 'the'], ['noun', 'bear'], ['verb', 'eat'], ['noun', 'honey']]
    parsed_sentence = parse_sentence(word_list)
    assert_equal(parsed_sentence.subject, 'bear')
    assert_equal(parsed_sentence.verb, 'eat')
    assert_equal(parsed_sentence.object, 'honey')
  end

  def test_parse_sentence_exception()

    word_list = [[nil, 'something_nonparseble']]

    assert_raise ParserError do
      parse_sentence(word_list)
    end
  end

end
