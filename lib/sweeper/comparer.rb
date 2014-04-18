class Sweeper::Comparer
  def self.compare(parsed, searched)
    searched.map!{|fname| fname.split(".").first }

    searched.reject{ |fname| search_similar(parsed, fname) }
  end

  private
  def self.search_similar(arr, searched_fname)
    arr.each do |fname|
      return true if searched_fname.match(/#{fname}$/)
    end
    return false
  end
end