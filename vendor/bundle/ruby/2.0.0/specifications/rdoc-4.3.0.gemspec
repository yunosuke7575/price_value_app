# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rdoc"
  s.version = "4.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Hodel", "Dave Thomas", "Phil Hagelberg", "Tony Strauss"]
  s.date = "2016-11-05"
  s.description = "RDoc produces HTML and command-line documentation for Ruby projects.  RDoc\nincludes the +rdoc+ and +ri+ tools for generating and displaying documentation\nfrom the command-line."
  s.email = ["drbrain@segment7.net", "", "technomancy@gmail.com", "tony.strauss@designingpatterns.com"]
  s.executables = ["rdoc", "ri"]
  s.extra_rdoc_files = ["CONTRIBUTING.rdoc", "CVE-2013-0256.rdoc", "ExampleMarkdown.md", "ExampleRDoc.rdoc", "History.rdoc", "LEGAL.rdoc", "LICENSE.rdoc", "Manifest.txt", "README.rdoc", "RI.rdoc", "TODO.rdoc", "Rakefile"]
  s.files = ["bin/rdoc", "bin/ri", "CONTRIBUTING.rdoc", "CVE-2013-0256.rdoc", "ExampleMarkdown.md", "ExampleRDoc.rdoc", "History.rdoc", "LEGAL.rdoc", "LICENSE.rdoc", "Manifest.txt", "README.rdoc", "RI.rdoc", "TODO.rdoc", "Rakefile"]
  s.homepage = "http://docs.seattlerb.org/rdoc"
  s.licenses = ["Ruby"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.0.14.1"
  s.summary = "RDoc produces HTML and command-line documentation for Ruby projects"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<kpeg>, ["~> 0.9"])
      s.add_development_dependency(%q<minitest>, ["~> 5.9"])
      s.add_development_dependency(%q<racc>, ["> 1.4.10", "~> 1.4"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.15"])
    else
      s.add_dependency(%q<kpeg>, ["~> 0.9"])
      s.add_dependency(%q<minitest>, ["~> 5.9"])
      s.add_dependency(%q<racc>, ["> 1.4.10", "~> 1.4"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.15"])
    end
  else
    s.add_dependency(%q<kpeg>, ["~> 0.9"])
    s.add_dependency(%q<minitest>, ["~> 5.9"])
    s.add_dependency(%q<racc>, ["> 1.4.10", "~> 1.4"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.15"])
  end
end
