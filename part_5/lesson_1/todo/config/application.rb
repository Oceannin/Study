require_relative "boot"

require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'action_mailer/railtie'
require 'active_job/railtie'
require 'action_cable/engine'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'rails/test_unit/railtie'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module Todo
  class Application < Rails::Application
    config.load_defaults 6.1

    config.i18n.available_locales = %i[en ru]
    config.i18n.default_locale = :ru
    config.time_zone = 'Moscow'
    config.i18n.load_path += Dir[Rails.root.join('vendor', 'locales', '**', '*.yml')]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml')]
    config.paths.add Rails.root.join('app/services').to_s, eager_load: true

    config.generators do |g|
      g.org             :active_record
      g.template_engine :slim
      g.system_tests    nil
      g.test_framework  nil
      g.helper          false
      g.stylesheets     false
      g.javascript      false
      g.factory_bot     dir: 'spec/factories'
    end
  end
end