require 'rails_container/container'

module RailsContainer
  module Extenstions
    module Configuration
      def container(&block)
        Container.configure &block
      end
    end
  end
end