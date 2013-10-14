module ZooPass
  DEFAULT_LENGTH = 3
  ADJECTIVES = FILE.open("adjectives.txt", 'r').read
  NOUNS =  FILE.open("nouns.txt", 'r').read

  def self.generate(length = DEFAULT_LENGTH)
    ZooPass::Generator.new.generate(length)
  end

  class Generator
    def initialize(adjectives = ADJECTIVES, nouns = NOUNS)
      @words = adjectives + nouns
      @nouns = nouns
      @adjectives = adjectives
    end

    def generate(length = DEFAULT_LENGTH)
      @words.shuffle.take(length).join('-')
    end

    def generate_name()
      @adjective.shuffle.take(1)+ '_' + @nouns.shuffle.take(1)
    end

  end
end
