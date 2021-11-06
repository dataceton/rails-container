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

    def auto_register!(path)
      Dir[File.join(Dir.pwd, path, '**/*')].each do |element|
        next unless element.include?('.rb')

        file_name = element.match(/(?<=#{path}\/).+/)[0][0...-3]
        container_key = file_name.gsub('/', '.')

        Rails.autoloaders.main.on_load(file_name.camelize) do |klass, _abspath|
          if block_given?
            container.register(container_key) { yield klass }
          else
            container.register(container_key) { klass }
          end
        end
      end
    end
  end
end