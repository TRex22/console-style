lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "console-style/version"

Gem::Specification.new do |spec|
  spec.name          = "console-style"
  spec.version       = ConsoleStyle::VERSION
  spec.authors       = ["trex22"]
  spec.email         = ["contact@jasonchalom.com"]

  spec.summary       = "A set of helper methods to help print to console."
  spec.description   = "A set of helper methods to help print to console."
  spec.homepage      = "https://github.com/TRex22/console-style"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Dependencies

  # Development Dependencies
  spec.add_development_dependency "pry"
end
