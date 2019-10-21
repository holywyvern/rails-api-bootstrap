namespace :travis do
  desc 'Analizes code quality, for TravisCI'
  task analyze: %i[travis:rubocop travis:spec travis:brakeman]

  task spec: :environment do
    Bundler.clean_exec('rspec')
  end

  task rubocop: :environment do
    Bundler.clean_exec('rubocop')
  end

  task brakeman: :environment do
    Bundler.clean_exec('brakeman bundle exec brakeman --no-pager --exit-on-error')
  end
end
