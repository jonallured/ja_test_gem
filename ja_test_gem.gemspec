# frozen_string_literal: true

require_relative "lib/ja_test_gem/version"

Gem::Specification.new do |spec|
  spec.name = "ja_test_gem"
  spec.version = JaTestGem::VERSION
  spec.authors = ["Jon Allured"]
  spec.email = ["jon@jonallured.com"]

  spec.summary = "This gem is just a test."
  spec.description = "I wanted a gem where I could try things out so that's what this is."
  spec.homepage = "https://github.com/jonallured/ja_test_gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
