module Rails
  module Generators
    class StyleGenerator < Rails::Generators::Base
      
      source_root File.expand_path("../templates", __FILE__)
      
      def copy_stylesheet
        copy_file "application.css", "public/stylesheets/application.css"
      end
      
    end
  end
end