class Lexicon

  DIRECTIONS = ['north', 'south', 'east', 'west', 'down', 'up', 'left', 'right',
     'back']
  VERBS = ['go', 'stop', 'kill', 'eat']
  STOPS = ['the', 'in', 'of', 'from', 'at', 'it']
  NOUNS = ['door', 'bear', 'princess', 'cabinet']

  def self.convert_number(object)
    begin
      return Integer(object)
    rescue
      return nil
    end
  end

  # class method, no need to create an instance of the Lexicon
  def self.scan(sentence)
    words = sentence.split
    lexicon = []

    words.each do |word|
      # https://bengribaudo.com/blog/2013/12/31/2530/ruby-case-testing-against-arrays-of-values
      case word
      when *DIRECTIONS
        lexicon.push(['direction', word])
      when *VERBS
        lexicon.push(['verb', word])
      when *STOPS
        lexicon.push(['stop', word])
      when *NOUNS
        lexicon.push(['noun', word])
      when convert_number(word).to_s
        lexicon.push(['number', word.to_i])
      else
        lexicon.push([nil, word])
      end
    end
    return lexicon
  end
end
