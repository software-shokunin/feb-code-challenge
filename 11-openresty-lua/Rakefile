begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
end

task :rubocop do
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new
end

task :foodcritic do
  require 'foodcritic'
  if Gem::Version.new('1.9.2') <= Gem::Version.new(RUBY_VERSION.dup)
    print 'Running foodcritic ... '
    if File.exist?('cookbooks')
      result = FoodCritic::Linter.new.check cookbook_paths: ['cookbooks']
    else
      result = FoodCritic::Linter.new.check cookbook_paths: '.'
    end

    if result.failed? || result.warnings.size > 0
      puts 'FAILED'
      puts result
      fail
    else
      puts 'OK'
    end
  else
    puts 'WARNING: Skipped running foodcritic. Ruby 1.9.2 or higher required'
  end
end

task :precommit do
  Rake::Task['spec'].invoke
  Rake::Task['rubocop'].invoke
  Rake::Task['foodcritic'].invoke
end
