# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'rspec-shared/version'

Gem::Specification.new do |s|
  s.name        = 'rspec-shared'
  s.version     = RSpecShared::VERSION
  s.authors     = ["Justin Ko"]
  s.email       = ["jko170@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'

  s.add_runtime_dependency 'rspec'
  s.add_development_dependency 'aruba'
end