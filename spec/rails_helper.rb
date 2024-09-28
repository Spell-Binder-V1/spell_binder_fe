# spec/rails_helper.rb

# Start SimpleCov before loading any application code to ensure accurate coverage metrics
require 'simplecov'
SimpleCov.start 'rails' do
end

# Require WebMock for stubbing HTTP requests
require 'webmock/rspec'

# Require the main spec_helper
require 'spec_helper'

# Set the Rails environment to 'test' unless it's already set
ENV['RAILS_ENV'] ||= 'test'

# Load the Rails application environment
require_relative '../config/environment'

# Prevent running tests in the production environment
abort("The Rails environment is running in production mode!") if Rails.env.production?

# Set the base URL for SpellbinderService in tests
ENV['SPELLBINDER_BASE_URL'] = 'http://localhost:3001'

# Require RSpec Rails
require 'rspec/rails'

# Configure WebMock to disable real HTTP connections except to localhost
WebMock.disable_net_connect!(allow_localhost: true)

# Require all support files (e.g., custom matchers, macros, helpers)
Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

# Check for pending migrations and apply them before tests are run
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

RSpec.configure do |config|
  # Specify the fixture path for ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # Use transactional fixtures for ActiveRecord to ensure a clean state
  config.use_transactional_fixtures = true

  # Infer the test type (model, controller, etc.) from the file location
  config.infer_spec_type_from_file_location!

  # Filter out Rails gems from backtraces to reduce noise
  config.filter_rails_from_backtrace!
  # Uncomment to filter additional gems from backtraces
  # config.filter_gems_from_backtrace("gem name")

  # Include FactoryBot methods for easier factory usage
  config.include FactoryBot::Syntax::Methods

  # API helper module
  config.include ApiHelper
end

# Configure Shoulda Matchers to integrate with RSpec and Rails
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
