module RailsContainer
  module Extensions
    module Rails
      def self.included(base)
        base.extend ClassMethods
        base.container_class = Container
      end

      module ClassMethods
        attr_accessor :container_class

        def container
          container_class.instance
        end
      end
    end
  end
end