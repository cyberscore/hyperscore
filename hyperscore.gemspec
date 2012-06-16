# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hyperscore/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ricardo Mendes"]
  gem.email         = ["rokusu@gmail.com"]
  gem.description   = %q{Cyberscore HAPI client}
  gem.summary       = %q{Easily navigate Cyberscore's Hypermedia API with the help of this little library}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hyperscore"
  gem.require_paths = ["lib"]
  gem.version       = Hyperscore::VERSION
  
  gem.add_runtime_dependency "hyperclient"
  gem.add_runtime_dependency "virtus"
  
  gem.add_development_dependency "pry"
end
