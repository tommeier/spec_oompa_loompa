# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{spec_oompa_loompa}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Meier"]
  s.date = %q{2010-05-18}
  s.description = %q{Spec helpers}
  s.email = %q{ozmeier@yahoo.co.uk}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/spec_oompa_loompa.rb",
     "lib/spec_oompa_loompa/spec_helpers.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/spec_oompa_loompa_spec.rb",
     "spec_oompa_loompa.gemspec"
  ]
  s.homepage = %q{http://github.com/tommeier/spec_oompa_loompa}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Helpful Spec Helpers with Orange Hair}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/spec_oompa_loompa_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

