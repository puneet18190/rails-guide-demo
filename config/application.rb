require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsGuide
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.time_zone = 'Europe/Warsaw'
	# optional - note it can be only :utc or :local (default is :utc)
	config.active_record.default_timezone = :local
	platform = RUBY_PLATFORM.match(/(linux|darwin)/)[0].to_sym
	Bundler.require(platform)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
