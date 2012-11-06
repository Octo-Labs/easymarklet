$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "easymarklet/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "easymarklet"
  s.version     = Easymarklet::VERSION
  s.authors     = ["Jeremy Green"]
  s.email       = ["jeremy@octolabs.com"]
  s.homepage    = "https://github.com/Octo-Labs/easymarklet"
  s.summary     = "The easiest way to create bookmarklets in your rails app."
  s.description = "The easiest way to create bookmarklets in your rails app."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "easyxdm-rails", "~> 0.0.5"


  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "capybara-webkit"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-spork"
  s.add_development_dependency "jasminerice"
end
