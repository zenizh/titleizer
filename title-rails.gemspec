$:.push File.expand_path("../lib", __FILE__)

require "title/rails/version"

Gem::Specification.new do |s|
  s.name        = "title-rails"
  s.version     = Title::Rails::VERSION
  s.authors     = ["kami"]
  s.email       = ["kami30k@gmail.com"]
  s.homepage    = "https://github.com/kami30k/title-rails"
  s.summary     = "Set page title to Rails application using I18n."
  s.description = "Set page title to Rails application using I18n."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
end
