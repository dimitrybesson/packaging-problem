require 'rake/testtask'

task :default => :test
Rake::TestTask.new do |t|
  project = Rake.application.original_dir
  t.libs << project
  t.pattern = "#{project}/*-test.rb"
  t.warning = true
  t.verbose = true
end
