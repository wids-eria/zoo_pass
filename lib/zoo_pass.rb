module ZooPass
  DEFAULT_LENGTH = 3
  ADJECTIVES = Array.new 
  File.open("adjectives.txt", 'r').each do |l|
    ADJECTIVES << l.strip
  end
  NOUNS = Array.new  
  File.open("nouns.txt", 'r').each do |l|
    NOUNS << l.strip
  end

  def self.generate(length = DEFAULT_LENGTH)
    ZooPass::Generator.new.generate(length)
  end

  def self.generate_name
    ZooPass::Generator.new.generate_name
  end

  class Generator
    def initialize(adjectives = ADJECTIVES, nouns = NOUNS)
      @nouns = nouns
      @adjectives = adjectives
      @words = adjectives + nouns
    end

    def generate(length = DEFAULT_LENGTH)
      @words.shuffle.take(length).join('-')
    end

    def generate_name
      @adjectives.shuffle.take(1).first+ '_' + @nouns.shuffle.take(1).first
    end

  end
end
