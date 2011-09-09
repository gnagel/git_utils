require 'rubygems' 

dirname = File.dirname(__FILE__)

gem 'hoe', '>= 2.1.0'
require 'hoe'
require dirname + "/lib/git_utils.rb"

# Overwrite the manifest file
GitUtils.sync_manifest(dirname)

# Overwrite the version file
GitUtils::sync_version(dirname, GitUtils::VERSION)

Hoe.plugin :newgem
$hoe = Hoe.spec 'git_utils' do |p|
  p.developer('Glenn Nagel', 'glenn@mercury-wireless.com')
  p.remote_rdoc_dir      = '' # Release to root only one project
  p.post_install_message = 'PostInstall.txt'
  p.extra_deps          = []
  p.extra_deps << ['hoe', '>= 2.1.0']
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
