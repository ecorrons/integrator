# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "integrator/version"

Gem::Specification.new do |s|
  s.name        = "integrator"
  s.version     = Integrator::VERSION
  s.authors     = ["Patricio Mac Adden"]
  s.email       = ["patriciomacadden@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Write a gem summary}
  s.description = %q{Write a gem description}

  s.rubyforge_project = "integrator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  
  s.add_development_dependency 'rake'
  s.add_development_dependency 'turn'
  
  s.add_development_dependency 'activesupport'
  s.add_runtime_dependency 'activesupport'
  
  s.add_development_dependency 'activerecord'
  s.add_runtime_dependency 'activerecord'
  
  s.add_development_dependency 'activemodel'
  s.add_runtime_dependency 'activemodel'
  
  s.add_development_dependency 'json'
  s.add_runtime_dependency 'json'
end
