require 'dry-container'

module RailsContainer
  class Container
    include Dry::Container::Mixin

    class << self
      def instance
        @_instance ||= new
      end

      def configure(&block)
        instance.instance_eval(&block)
      end
    end

    def container
      self.class.instance
    end
  end
end