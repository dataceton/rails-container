module RailsContainer
  module Extensions
    module Configuration
      def container(&block)
        Container.configure &block
      end
    end
  end
end