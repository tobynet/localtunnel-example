require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/*/*_spec.rb'
end

task :default => :spec

desc 'Test of running localtunnel'
task :test_tunnel do
  sh('vagrant ssh -c "lt --port 80"')
end

