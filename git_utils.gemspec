# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{git_utils}
  s.version = "1.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Glenn Nagel}]
  s.date = %q{2011-09-09}
  s.description = %q{A gem that provides simple git & gem utility scripts.}
  s.email = [%q{glenn@mercury-wireless.com}]
  s.executables = [%q{gem_publish.sh}, %q{git_commit.sh}]
  s.extra_rdoc_files = [
    "History.txt",
    "Manifest.txt",
    "PostInstall.txt"
  ]
  s.files = [
    "History.txt",
    "History_txt.html",
    "Manifest.txt",
    "Manifest_txt.html",
    "PostInstall.txt",
    "PostInstall_txt.html",
    "README.rdoc",
    "bin/gem_publish.sh",
    "bin/git_commit.sh",
    "doc/GitUtils.html",
    "doc/created.rid",
    "doc/images/brick.png",
    "doc/images/brick_link.png",
    "doc/images/bug.png",
    "doc/images/bullet_black.png",
    "doc/images/bullet_toggle_minus.png",
    "doc/images/bullet_toggle_plus.png",
    "doc/images/date.png",
    "doc/images/find.png",
    "doc/images/loadingAnimation.gif",
    "doc/images/macFFBgHack.png",
    "doc/images/package.png",
    "doc/images/page_green.png",
    "doc/images/page_white_text.png",
    "doc/images/page_white_width.png",
    "doc/images/plugin.png",
    "doc/images/ruby.png",
    "doc/images/tag_green.png",
    "doc/images/wrench.png",
    "doc/images/wrench_orange.png",
    "doc/images/zoom.png",
    "doc/index.html",
    "doc/js/darkfish.js",
    "doc/js/jquery.js",
    "doc/js/quicksearch.js",
    "doc/js/thickbox-compressed.js",
    "doc/lib/git_utils_rb.html",
    "doc/rdoc.css",
    "git_utils.gemspec",
    "lib/git_utils.rb",
    "spec/git_utils_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{https://github.com/gnagel/mercury-wireless-public/tree/master/ruby/git_utils}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = [%q{--main}, %q{README.rdoc}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{git_utils}
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{A gem that provides simple git & gem utility scripts.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hoe>, [">= 2.1.0"])
      s.add_development_dependency(%q<hoe>, ["~> 2.9"])
    else
      s.add_dependency(%q<hoe>, [">= 2.1.0"])
      s.add_dependency(%q<hoe>, ["~> 2.9"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.1.0"])
    s.add_dependency(%q<hoe>, ["~> 2.9"])
  end
end

