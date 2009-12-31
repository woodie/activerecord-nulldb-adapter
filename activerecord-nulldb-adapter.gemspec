# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{activerecord-nulldb-adapter}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Avdi Grimm"]
  s.date = %q{2009-12-30}
  s.description = %q{An ActiveRecord null database adapter for greater speed and isolation in unit tests}
  s.email = %q{avdi@avdi.org}
  s.extra_rdoc_files = [
    "LICENSE",
     "README"
  ]
  s.files = [
    "LICENSE",
     "README",
     "Rakefile",
     "VERSION",
     "activerecord-nulldb-adapter.gemspec",
     "init.rb",
     "lib/active_record/connection_adapters/nulldb_adapter.rb",
     "lib/nulldb_rspec.rb",
     "spec/nulldb_spec.rb",
     "tasks/database.rake"
  ]
  s.homepage = %q{http://nulldb.rubyforge.org}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{nulldb}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{NullDB lets you to test your models without ever touching a real database.}
  s.test_files = [
    "spec/nulldb_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

