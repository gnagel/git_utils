module GitUtils
  VERSION = '1.0.9'
  
  ###
  # Overwrite the Manifest.txt file with the actual contents of this directory
  ###
  def GitUtils.sync_manifest(dirname)
    File.open(File.join(dirname, "Manifest.txt"), 'w') { |file| file.puts Dir.chdir(dirname) { Dir["**/*.*"] } }
  end
  
  def GitUtils.sync_version(dirname, version)
    File.open(File.join(dirname, 'VERSION'), 'w') { |file| file.puts version }
  end
end
