ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails' # @TODO
# shouln't we load rails stuff only in rails_helper?
# we have it required in rails_helper


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.include RSpec::Rails::RequestExampleGroup
  config.include RequestHelpers
  config.include ActionDispatch::TestProcess
end
