class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(hash)
    temp = {}
    if hash.is_a? String
      @entries[hash] = nil
    else
      hash.each do |key, value|
        @entries[key] = value
      end
    end

    @entries = @entries.sort_by { |key, value| key }.to_h

  end

  def keywords
    array = []
    i = 0
    @entries.each do |key, value|
      array[i] = key
      i += 1
    end
    array
  end

  def include?(key = nil)
    @entries.has_key?(key) ? true : false
  end

  def find(word)
    @entries.has_key?(word) ? @entries : {}
    hash = {}
    if word.is_a? String
      @entries.each do |key, value|
        if key.include? word
          hash[key] = value
        end
      end
    end
    hash

  end

  def printable
     @entries.map { |key, values|
        "[#{key}] \"#{values}\""
    }.join("\n")
  end
end
