module GitUtils
  VERSION = '1.1.0'
  
  ###
  # Overwrite the Manifest.txt file with the actual contents of this directory
  ###
  def GitUtils.sync_manifest(dirname)
    file_name = dirname + "/Manifest.txt"
    puts "Overwriting #{file_name}"
    File.open(file_name, 'w') { |file| file.puts Dir["#{dirname}/**/*.*"].collect() { |dir| dir[dirname.length+1, dir.length] } }
  end
  
  def GitUtils.sync_version(dirname, version)
    file_name = dirname + "/VERSION"
    puts "Overwriting #{file_name}"
    File.open(file_name, 'w') { |file| file.puts version }
  end
end
