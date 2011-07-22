# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "levenshtein/version"

Gem::Specification.new do |s|
  s.name        = "levenshtein"
  s.version     = Levenshtein::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Thomas Devol"]
  s.email       = ["vajrapani666@gmail.com"]
  s.homepage    = ""
  s.summary     = "Provides access to String#levenshtein"
  s.description = "Calculates differences in replacements between strings"
  s.rubyforge_project = "levenshtein"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib","ext"]
end
