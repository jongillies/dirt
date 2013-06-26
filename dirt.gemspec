# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dirt/version'

Gem::Specification.new do |gem|
  gem.name          = "dirt"
  gem.version       = Dirt::VERSION
  gem.authors       = ["Jon Gillies"]
  gem.email         = ["jon@gillies.us"]
  gem.description   = %q{DIRT}
  gem.summary       = %q{DIRT}
  gem.homepage      = "https://github.com/jongillies/dirt.git"
 
  gem.files = Dir['Rakefile', 'Gemfile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = Dir['{test,spec,features}']

  gem.add_development_dependency "rspec"
  gem.add_runtime_dependency "trollop"

end
