require_relative 'lib/meals_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "meals_cli"
  spec.version       = MealsCli::VERSION
  spec.authors       = ["freddyflorial@gmail.com"]
  spec.email         = ["freddyflorial@gmail.com"]

  spec.summary       = %q{Meals_cli accesses the API and gives you details of the list of menu items. Where the food is from, Youtube link, instuctions and the meal}
  spec.homepage      = "git@github.com:FredFlor92/Meals_CLI.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "git@github.com:FredFlor92/Meals_CLI.git"
  spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
