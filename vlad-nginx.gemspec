# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{vlad-nginx}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kim Burgestrand"]
  s.date = %q{2011-01-31}
  s.email = %q{kim@burgestrand.se}
  s.extra_rdoc_files = [
    "LICENSE"
  ]
  s.files = [
    "Gemfile",
    "LICENSE",
    "Rakefile",
    "VERSION",
    "lib/vlad/nginx.rb",
    "vlad-nginx.gemspec"
  ]
  s.homepage = %q{http://github.com/Burgestrand/vlad-nginx}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{NGiNX recipe for Vlad the Deployer}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<vlad>, ["~> 2"])
    else
      s.add_dependency(%q<vlad>, ["~> 2"])
    end
  else
    s.add_dependency(%q<vlad>, ["~> 2"])
  end
end

