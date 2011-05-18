module Rails
  module Generators
    class MyStylesheetGenerator < Rails::Generators::Base
      source_root File.expand_path("../template", __FILE__)
      class_option :color, :type => :string, :default => '#666'
      
      def generate_layout
        copy_file "my_layout.html.erb", "app/views/layouts/application.html.erb"
      end
      
      def generate_stylesheet
        copy_file "my_stylesheet.css", "public/stylesheets/my_stylesheet.css"
      end
      
      def generate_own_background_color
        append_file "public/stylesheets/my_stylesheet.css", "body {color: #{options.color};}"
      end
      
    end
  end
end