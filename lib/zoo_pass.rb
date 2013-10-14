module ZooPass
  DEFAULT_LENGTH = 3
  ADJECTIVES = File.open("adjectives.txt", 'r').read
  NOUNS =  File.open("nouns.txt", 'r').read

  def self.generate(length = DEFAULT_LENGTH)
    ZooPass::Generator.new.generate(length)
  end

  def self.generate_name
    ZooPass::Generator.new.generate_name
  end

  class Generator
    def initialize(adjectives = ADJECTIVES, nouns = NOUNS)
      @nouns = nouns.split
      @adjectives = adjectives.split
      @words = adjectives + nouns
    end

    def generate(length = DEFAULT_LENGTH)
      @words.shuffle.take(length).join('-')
    end

    def generate_name
      @adjectives.shuffle.take(1)+ '_' + @nouns.shuffle.take(1)
    end

  end
end
