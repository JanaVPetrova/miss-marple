class MissMarple::Comparer
  def self.compare(parsed, searched)
    searched.reject{ |fname| search_similar(parsed, fname) }
  end

  private
  def self.search_similar(arr, searched_fname)
    arr.each do |path|
      path_without_ext = path.split(".").first
      if searched_fname.end_with?(path_without_ext) || searched_fname.start_with?(path_without_ext)
        return true
      end
    end
    return false
  end
end