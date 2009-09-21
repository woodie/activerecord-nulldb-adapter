require 'rake'
require 'rake/rdoctask'
require 'spec/rake/spectask'

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

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = 'nulldb'
    gem.summary = %Q{NullDB lets you to test your models without ever touching a real database.}
    gem.homepage = 'http://nulldb.rubyforge.org'
    gem.authors = ['Avdi Grimm']
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end

rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end
