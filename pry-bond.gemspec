require "./lib/pry/bond/version"
Gem::Specification.new do |spec|
  spec.name          = "pry-bond"
  spec.version       = Pry::Bond::VERSION
  spec.authors       = ["Public Domain"]
  spec.email         = ["robert@flowof.info"]
  spec.description   = "pry-bond provides input completion in pry through the `bond` rubygem."
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/johnny5-/pry-bond"
  spec.license       = "Public Domain"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 1.9.2"
  spec.files = `git ls-files lib doc LEGAL.txt`.split($/)
  spec.add_runtime_dependency "bond", "~> 0.5"
end
