require "rake"
require "rake/clean"

CLEAN.include ["minitest-global_expectations-*.gem"]

desc "Build minitest-global_expectations gem"
task :package=>[:clean] do |p|
  sh %{#{FileUtils::RUBY} -S gem build minitest-global_expectations.gemspec}
end

### Specs

desc "Run test"
task :test do
  sh %{#{FileUtils::RUBY} test/minitest_global_expectations_test.rb}
end

task :default=>:test
