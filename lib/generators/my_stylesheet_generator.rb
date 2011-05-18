module Rails
  module Generators
    class MyStylesheetGenerator < Rails::Generators::Base
      source_root File.expand_path("../template", __FILE__)
      
      def generate_layout
        copy_file "my_layout.html.erb", "app/views/layouts/application.html.erb"
      end
      
      def generate_stylesheet
        copy_file "my_stylesheet.css", "public/stylesheets/my_stylesheet.css"
      end
      
    end
  end
end