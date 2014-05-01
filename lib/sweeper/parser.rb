class Sweeper::Parser
  def self.parse(path)
    content = File.readlines(path)
    valuable_strings = content.reject{ |str| !str.include?("= require") }

    required = search_paths valuable_strings, path
    required += valuable_strings.map{ |str| str.partition("require ").last.chomp }
    required.map!{|str| str.gsub(".", "")}
    required.reject{ |str| str.empty? }
  end

  private
  def self.search_paths arr, path
    result = arr.map{ |str| str.partition("require_tree ").last.chomp }
    result.reject!{ |str| str.empty? }
    result.map{|str| File.dirname(path) + str }
  end
end