# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wkhtml/bin/version'

Gem::Specification.new do |spec|
  spec.platform      = Gem::Platform::RUBY
  spec.name          = "wkhtml-bin"
  spec.version       = Wkhtml::Bin::VERSION
  spec.authors       = ["Gaurav Saini"]
  spec.email         = ["gaurav.saini@trantorinc.com"]
  spec.summary       = %q{Provides binaries for WKHTMLTOPDF project in an easily accessible package.}
  spec.description   = %q{Provides binaries for WKHTMLTOPDF project in an easily accessible package.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = %w(
    lib/wkhtmltopdf-binary.rb bin/wkhtmltopdf
    libexec/wkhtmltopdf-darwin-x86
    libexec/wkhtmltopdf-linux-amd64
    libexec/wkhtmltopdf-linux-x86
    libexec/wkhtmltopdf-i386
    libexec/wkhtmltopdf_linux_x64
    )
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 1.8.7'
  spec.required_rubygems_version = ">= 1.3.6"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 0"
end
