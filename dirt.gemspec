# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dirt/version'

Gem::Specification.new do |gem|
  gem.name          = "dirt"
  gem.version       = Dirt::VERSION
  gem.authors       = ["YOUR NAME HERE"]
  gem.email         = ["YOUR EMAIL ADDRESS HERE"]
  gem.description   = %q{This is a demonstration gem to show how to build and test gems}
  gem.summary       = %q{gem builder example}
  gem.homepage      = "CODE REPOSITORY URL OR HOME PAGE URL"
 
  gem.files = Dir['Rakefile', 'Gemfile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = Dir['{test,spec,features}']

  gem.add_development_dependency "rspec"
  gem.add_runtime_dependency "trollop"

end
