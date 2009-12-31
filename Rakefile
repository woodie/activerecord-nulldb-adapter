require 'rake'
require 'rake/rdoctask'
require 'spec/rake/spectask'

# active_record connection_adapters abstract connection_specification
GEM_NAME = 'activerecord-nulldb-adapter'

desc "Run all examples"
Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
end

Rake::RDocTask.new do |rd|
  rd.main = "README"
  rd.rdoc_files.include("README", "LICENSE", "lib/**/*.rb")
end

desc "Publish project home page"
task :publish => ["rdoc"] do
  sh "scp -r html/* avdi@rubyforge.org:/var/www/gforge-projects/nulldb"
end

desc "Tag release"
task :tag do
  warn "This needs to be updated for git"
  exit 1
  repos   = "http://svn.avdi.org/nulldb"
  version = ENV["VERSION"]
  raise "No version specified" unless version
  sh "svn cp #{repos}/trunk #{repos}/tags/nulldb-#{version}"
end

desc "Build gem"
task :gem do
  system 'rake gemspec'
  system "gem build #{GEM_NAME}.gemspec"
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = GEM_NAME
    gem.summary = %Q{NullDB lets you to test your models without ever touching a real database.}
    gem.email = "josh@technicalpickles.com"
    gem.homepage = 'http://nulldb.rubyforge.org'
    gem.description = "An ActiveRecord null database adapter for greater speed and isolation in unit tests"
    gem.rubyforge_project = 'nulldb' 
    gem.authors = ['Avdi Grimm']
  end

rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end
