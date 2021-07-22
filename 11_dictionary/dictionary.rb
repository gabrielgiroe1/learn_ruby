class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(hash)
    hash.is_a?(String) ? @entries[hash] = nil : @entries.merge!(hash)
  end

  def keywords
    array = []
    @entries.each do |key,value|
      array.push(key)
    end
    array.sort
  end

  def include?(key = nil)
    @entries.has_key?(key)
  end

  def find(word)
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
    @entries.reverse_each.map { |key, values| "[#{key}] \"#{values}\"" }.join("\n")
  end
end