module OpenProject
  module Themes
    module Preview
      require 'open_project/themes/preview/engine'

      def self.assets_path
        @assets_path ||= Engine.root.join('app/assets').to_s
      end
    end
  end
end
