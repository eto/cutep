require_relative 'lib/qp/version'

Gem::Specification.new do |spec|
  spec.name          = "cutep"
  spec.version       = QP::VERSION
  spec.authors       = ["Koichiro Eto"]
  spec.email         = ["k-eto@aist.go.jp"]

  spec.summary       = %q{"qp" is an extension of "p".}
  spec.description   = %q{ Normal "p" only outputs the specified variables, etc. However, during programming, you may need information about where the "p" is being called. "qp" outputs the information about where it is called at the same time.}
  spec.homepage      = "https://github.com/eto/cutep"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/eto/cutep"
  spec.metadata["changelog_uri"] = "https://github.com/eto/cutep"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
