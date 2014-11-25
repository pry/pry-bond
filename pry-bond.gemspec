require "./lib/pry/bond/version"
Gem::Specification.new do |spec|
  spec.name          = "pry-bond"
  spec.version       = Pry::BondCompleter::VERSION
  spec.authors       = ["MIT"]
  spec.email         = ["rpag@singletonclass.com"]
  spec.description   = "pry-bond provides input completion in pry through the `bond` rubygem."
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/pry/pry-bond"
  spec.license       = "MIT"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 1.9.2"
  spec.files = `git ls-files`.split($/)
  spec.add_runtime_dependency "bond", "~> 0.5"
  spec.add_runtime_dependency "rb-readline", "~> 0.5"
end
