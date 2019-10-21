ENV['RAILS_ENV'] ||= 'test'
require 'support/spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'pundit/rspec'
require 'webmock/rspec'
require 'devise/jwt/test_helpers'

include ActionDispatch::TestProcess

# Require support files
Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.include ActionDispatch::TestProcess
  config.file_fixture_path = Rails.root.join('spec', 'support', 'fixtures')

  config.infer_spec_type_from_file_location!
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Response::JSONParser, type: :controller
  config.order = 'random'
end

ActiveRecord::Migration.maintain_test_schema!

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
