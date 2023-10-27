# lib/配下のファイルを/User/<your name>/配下からシンボリックリンクを貼る

lib_files = Dir.glob('./lib/*').map {|c| File.expand_path c }
lib_files.each do |path|
  src = path
  dst = File.join(node[:home], path.split("/").last)

  next if File.exist?(dst)

  directory File.dirname(dst)

  link dst do
    to src
  end
end
