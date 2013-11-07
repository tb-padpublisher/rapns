source 'https://rubygems.org'

gem 'rake'
gem 'rspec', '>= 2.4'
gem 'rails', '~> 3.2'
gem 'database_cleaner', '1.0.1'
gem 'simplecov'
gem 'timecop', '0.5.9.2'
# To be able to use protected attributes with Rails 4
gem 'protected_attributes'

platform :mri_19, :mri_20 do
  gem 'cane'
end

platform :ruby do
  gem 'pg'
  gem 'mysql2'
  gem 'yajl-ruby'
  gem 'sqlite3'
end

platform :jruby do
  gem 'activerecord-jdbc-adapter', '>= 1.2.6'
  gem 'activerecord-jdbcpostgresql-adapter'
  gem 'activerecord-jdbcmysql-adapter'
  gem 'activerecord-jdbcsqlite3-adapter'
  gem 'activerecord-jdbch2-adapter'
  gem 'jdbc-postgres'
  gem 'jruby-openssl'
end

gemspec
