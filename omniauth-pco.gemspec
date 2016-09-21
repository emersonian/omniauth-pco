$:.push File.expand_path("../lib", __FILE__)
require "omniauth-pco/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-pco"
  s.version     = OmniAuth::Pco::VERSION
  s.authors     = ["Emerson Hall"]
  s.email       = ["e@emersonhall.com"]
  s.homepage    = "https://github.com/emersonian/omniauth-pco"
  s.summary     = %q{Omniauth strategy for Planning Center Online}
  s.description = %q{Omniauth strategy for Planning Center Online}

  s.rubyforge_project = "omniauth-pco"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth2', '1.3.1'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end

