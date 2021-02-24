# -*- encoding: utf-8 -*-

=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.31
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0-SNAPSHOT

=end

$:.push File.expand_path("../lib", __FILE__)
require "ezmax_api/version"

Gem::Specification.new do |s|
  s.name        = "ezmax_api"
  s.version     = EzmaxApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["eZmax Solutions inc."]
  s.email       = ["support-api@ezmax.ca"]
  s.homepage    = "https://github.com/eZmaxinc/eZmax-SDK-ruby"
  s.summary     = "eZmax API Definition Ruby Gem"
  s.description = "eZmax Api"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
