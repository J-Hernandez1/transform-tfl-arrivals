# -*- encoding: utf-8 -*-
# stub: faker 3.4.2 ruby lib

Gem::Specification.new do |s|
  s.name = "faker".freeze
  s.version = "3.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/faker-ruby/faker/issues", "changelog_uri" => "https://github.com/faker-ruby/faker/blob/main/CHANGELOG.md", "documentation_uri" => "https://rubydoc.info/github/faker-ruby/faker", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/faker-ruby/faker", "yard.run" => "yri" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Benjamin Curtis".freeze, "Vitor Oliveira".freeze]
  s.date = "2024-07-17"
  s.description = "Faker, a port of Data::Faker from Perl, is used to easily generate fake data: names, addresses, phone numbers, etc.".freeze
  s.email = ["benjamin.curtis@gmail.com".freeze, "vbrazo@gmail.com".freeze]
  s.executables = ["faker".freeze]
  s.files = ["bin/faker".freeze]
  s.homepage = "https://github.com/faker-ruby/faker".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Easily generate fake data".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<i18n>.freeze, [">= 1.8.11", "< 2"])
  else
    s.add_dependency(%q<i18n>.freeze, [">= 1.8.11", "< 2"])
  end
end
