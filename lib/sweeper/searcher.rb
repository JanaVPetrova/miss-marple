class Sweeper::Searcher
  attr_reader :filenames

  def initialize(paths)
    files_and_dirs = paths.map{|path| Dir.glob("#{path}/**/*") }.flatten

    @filenames = files_and_dirs.reject{ |file| File.directory? file }
  end
end