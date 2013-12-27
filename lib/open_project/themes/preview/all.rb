require 'open_project/themes/theme'

module OpenProject::Themes::Preview
  class PreviewTheme < OpenProject::Themes::Theme
    def assets_path
      OpenProject::Themes::Preview.assets_path
    end
  end
end
