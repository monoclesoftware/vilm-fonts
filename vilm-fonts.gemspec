# -*- encoding: utf-8 -*-
require File.expand_path('../lib/vilm-fonts/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Moore"]
  gem.email         = ["chris@monoclesoftware.com"]
  gem.description   = %q{Fonts used by VILM.com are used in various projects. This gives all those projects access to the same fonts in one convient gem. It also give you, the people, the same access.}
  gem.summary       = %q{An asset pipeline friendly version of all the fonts used in VILM.com video generation.}
  gem.homepage      = "https://github.com/monoclesoftware/vilm-fonts"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "vilm-fonts"
  gem.require_paths = ["lib"]
  gem.version       = Vilm::Fonts::VERSION
end
