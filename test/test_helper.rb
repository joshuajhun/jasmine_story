ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require "rails/test_help"
require "capybara/rails"
require "minitest/emoji"
require "pry"

class ActiveSupport::TestCase
  include Capybara::DSL
  fixtures :all
end
