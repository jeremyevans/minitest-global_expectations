Gem::Specification.new do |s|
  s.name = 'minitest-global_expectations'
  s.version = '1.0.1'
  s.platform = Gem::Platform::RUBY
  s.extra_rdoc_files = ["README.rdoc", "CHANGELOG", "MIT-LICENSE"]
  s.rdoc_options += ["--quiet", "--line-numbers", "--inline-source", '--title', 'minitest-global_expectations: add expectation methods to all objects', '--main', 'README.rdoc']
  s.license = "MIT"
  s.summary = "Support minitest expectation methods for all objects"
  s.author = "Jeremy Evans"
  s.email = "code@jeremyevans.net"
  s.homepage = "http://github.com/jeremyevans/minitest-global_expectations"
  s.files = %w(MIT-LICENSE CHANGELOG README.rdoc Rakefile) + Dir["{test,lib}/**/*.rb"]
  s.description = <<END
minitest-global_expectations allows you to keep using simple code in your
minitest specs, without having to wrap every single object you are calling
an expectation method on with an underscore.
END

  s.add_dependency "minitest", ">5"
end
