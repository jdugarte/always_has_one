$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "always_has_one/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "always_has_one"
  s.version     = AlwaysHasOne::VERSION
  s.author      = "Jesús Dugarte"
  s.email       = "jdugarte@gmail.com"
  s.homepage    = "http://github.com/jdugarte/always_has_one/"
  s.summary     = "Make sure a has_one association always exists"
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"

  s.add_development_dependency "sqlite3"
end
