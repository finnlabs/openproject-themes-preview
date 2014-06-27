module OpenProject::Themes::Preview
  class Engine < ::Rails::Engine
    engine_name :openproject_themes_preview

    initializer 'themes.preview.register_themes' do
      ActiveSupport.on_load(:themes) do
        require 'open_project/themes/preview/all'
      end
    end

    config.to_prepare do
      require 'redmine/plugin'
      require 'open_project/themes/preview/version'

      Redmine::Plugin.register 'Preview-Theme' do
        name 'OpenProject Preview Theme'
        author 'OpenProject Team'
        description 'Preview theme for OpenProject'

        url 'https://github.com/opf/openproject-themes-preview'
        author_url 'http://www.finn.de'

        version OpenProject::Themes::Preview::VERSION

        requires_openproject ">= 4.0.0"
      end
    end
  end
end
