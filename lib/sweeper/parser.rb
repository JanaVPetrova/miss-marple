class Sweeper::Parser
  def self.parse(path)
    content = File.readlines(path)
    valuable_strings = content.reject{ |str| !str.include? "require " }
    valuable_strings.map!{ |str| str.partition("require ").last.chomp }
  end
end