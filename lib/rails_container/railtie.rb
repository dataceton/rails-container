require 'rails'

require 'rails_container/extenstions/rails'
require 'rails_container/extenstions/configuration'

module RailsContainer
  class Railtie < Rails::Railtie
    config.before_configuration do |_app|
      Rails.include ::Extenstions::Rails
      Rails::Railtie::Configuration.include ::Extentsions::Configuration
    end
  end
end