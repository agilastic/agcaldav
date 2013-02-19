# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require File.expand_path('../lib/agcaldav/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "agcaldav"
  s.version     = AgCalDAV::VERSION
  s.summary     = "Ruby CalDAV client"
  s.description = "yet another great Ruby client for CalDAV calendar and tasks."

  s.required_ruby_version     = '>= 1.9.2'

  s.license     = 'MIT'

  s.homepage    = %q{https://github.com/agilastic/agcaldav}
  s.authors     = [%q{Alex Ebeling-Hoppe}]
  s.email       = [%q{ebeling-hoppe@agilastic.de}]
  s.add_runtime_dependency 'icalendar'
  s.add_runtime_dependency 'uuid'
  s.add_runtime_dependency 'builder'
  s.add_runtime_dependency 'net-http-digest_auth'
  s.add_development_dependency "rspec"  
  s.add_development_dependency "fakeweb"
  


  s.description = <<-DESC
  agcaldav is yet another great Ruby client for CalDAV calendar.  It is based on the icalendar gem.
DESC
  s.post_install_message = <<-POSTINSTALL
  Changelog: https://github.com/agilastic/agcaldav/blob/master/CHANGELOG.rdoc
  Examples:  https://github.com/agilastic/agcaldav
POSTINSTALL


  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
