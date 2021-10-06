require 'dry-container'

module RailsContainer
  class Container
    include Dry::Container::Mixin

    class << self
      def instance
        @_instance ||= new
      end

      def configure
        yield instance
      end
    end
  end
end