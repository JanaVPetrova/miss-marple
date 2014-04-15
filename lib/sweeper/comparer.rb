class Sweeper::Comparer
  def self.compare(parsed, searched)
    searched.map!{|fname| fname.split(".").first }
    searched - parsed
  end
end