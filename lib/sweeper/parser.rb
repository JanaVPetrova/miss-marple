class Sweeper::Parser
  def self.parse(path)
    content = File.open(path).read
    valuable_strings = content.split("\n").reject{ |str| !str.include? "require" }
    valuable_strings.map!{ |str| str.partition("require ").last }
  end
end