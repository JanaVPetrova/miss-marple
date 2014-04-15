class Sweeper::Searcher
  def self.search(paths)
    files_and_dirs = paths.map{|path| Dir.glob("#{path}/**/*") }.flatten

    permited_exts = %(.css .js .js.coffee .less .scss .sass)

    no_dirs = files_and_dirs.reject{ |file| File.directory?(file) }
    no_dirs.reject{|file| !permited_exts.include? File.extname(file) }
  end
end