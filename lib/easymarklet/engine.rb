module Easymarklet

  require 'easyxdm-rails'
  
  class Engine < ::Rails::Engine
    config.generators.integration_tool :rspec
    config.generators.test_framework :rspec
  end
end
