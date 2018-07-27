class Sentence
  attr_reader :entry

  def initialize(entry)
    @entry = entry
  end

  def region
    @entry["regions"].first
  end

  def sentence
    @entry['text']
  end
end
