require 'rubygems' 

BASE_DIR = File.dirname(__FILE__)

gem 'hoe', '>= 2.1.0'
require 'hoe'
require BASE_DIR + "/lib/git_utils.rb"

# Overwrite the manifest file
File.open("#{BASE_DIR}/Manifest.txt", 'w') do |file| 
  files = `cd #{BASE_DIR} && ls -R`.lines.collect { |l| l.strip!; l }
  files.each { |file_name| file.puts file_name unless File.directory?(file_name) }
end

Hoe.plugin :newgem
$hoe = Hoe.spec 'git_utils' do |p|
  p.developer('Glenn Nagel', 'glenn@mercury-wireless.com')
  p.remote_rdoc_dir      = '' # Release to root only one project
  p.post_install_message = 'PostInstall.txt'
  p.extra_deps          = []
  p.extra_deps << ['hoe', '>= 2.1.0']
  p.extra_deps << ['yaml']
end

begin
  require 'jeweler'
  Jeweler::Tasks.new($hoe.spec)
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }
remove_task :default
task :default => [:test]
