require_relative "./controller_macros"

RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, :type => :contoller
  config.extend ControllerMacros, :type => :contoller
end
