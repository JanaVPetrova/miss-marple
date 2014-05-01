class Sweeper::Comparer
  def self.compare(parsed, searched)
    searched.map!{|fname| fname.split(".").first }

    searched.reject{ |fname| search_similar(parsed, fname) }
  end

  private
  def self.search_similar(arr, searched_fname)
    arr.each do |path|
      if searched_fname.end_with?(path) || searched_fname.start_with?(path)
        return true
      end
    end
    return false
  end
end