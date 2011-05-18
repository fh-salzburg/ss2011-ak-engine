module Ss2011akengine
  module Generators
    class StyleGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../templates", __FILE__)
      
      class_option :color, :type => :string
      
      def copy_stylesheed
        copy_file "static.css", "public/stylesheets/static.css"
        if options.color
          insert_into_file "public/stylesheets/static.css", "\n  background-color: #{options.color};", :after => "body {"
        end
      end
    end
  end
end
