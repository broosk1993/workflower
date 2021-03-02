# frozen_string_literal: true

require_relative "lib/workflower/version"

Gem::Specification.new do |spec|
  spec.name          = "workflower"
  spec.version       = Workflower::VERSION
  spec.authors       = ["Brusk Hamarash"]
  spec.email         = ["broosk.edogawa@gmail.com"]

  spec.summary       = "A state-machine library that handles state management"
  spec.description   = "Using a finite state machine algorith, this gem allows to handle state of an entity with ease."
  spec.homepage      = "https://github.com/broosk1993/workflower"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["allowed_push_host"] = "https://github.com/broosk1993/workflower"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/broosk1993/workflower"
  spec.metadata["changelog_uri"] = "https://github.com/broosk1993/workflower/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "activesupport", ">= 5.0.0.1"
  spec.add_development_dependency "byebug"
  
  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
