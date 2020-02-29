lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "pirat"
  spec.version       = "0.0.4"
  spec.authors       = ["jazin32"]
  spec.email         = ["majster1020@wp.pl"]

  spec.summary       = "aasdasd"
  spec.description   = "edited pirata gem - https://rubygems.org/gems/pirata/"
  spec.homepage      = "https://github.com/jazin32/pirat"
  spec.license       = "GPL-3.0"

  spec.files = [
    "lib/pirata.rb",
    "lib/pirata/search.rb",
    "lib/pirata/category.rb",
    "lib/pirata/sort.rb",
    "lib/pirata/torrent.rb",
    "lib/pirata/user.rb"
  ]

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jazin32/pirat"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'nokogiri', '~> 1.10', '>= 1.10.4'
  spec.add_runtime_dependency 'open_uri_redirections', '~> 0.2.1'
  spec.add_development_dependency 'minitest', '~> 5.11', '>= 5.11.3'
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3"
end
