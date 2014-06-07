require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Reservira
  class Application < Rails::Application

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end

    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :'pt-BR'
    config.i18n.load_path += Dir["#{Rails.root}/config/locales/**/*.{rb,yml}"]
    config.encoding = 'utf-8'
    config.assets.enabled = true
    config.assets.version = '1.0'
    config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
    I18n.enforce_available_locales = false
  end
end
