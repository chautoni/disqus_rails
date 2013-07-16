ENV["RAILS_ENV"] = "test"

require File.expand_path('../dummy/config/environment.rb',  __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara'
require 'capybara/rails'
require 'capybara/rspec'
require 'capybara/dsl'
require 'disqus_rails'

Rails.backtrace_cleaner.remove_silencers!
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.include Capybara::DSL
end
