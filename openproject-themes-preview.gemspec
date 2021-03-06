$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "open_project/themes/preview/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject-themes-preview"
  s.version     = OpenProject::Themes::Preview::VERSION
  s.authors     = ["Philipp Tessenow"]
  s.email       = ["info@openproject.com"]
  s.homepage    = "http://www.openproject.com/"
  s.summary     = "Preview Theme for OpenProject"
  s.description = "Preview Theme for OpenProject and a Generator to bootstrap new themes"

  s.files = Dir["{app,lib}/**/*", "Rakefile", "README.rdoc"]

  s.add_dependency 'rails', '~> 4.2.4'
end
