module Rails
  module Generators
    class StyleGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      argument :attributes, :type => :string, :default => "black",
          :banner => "color as string"
      
      def copy_stylesheet
        y "setting color of h1 to #{attributes}"
        template "application.css", "public/stylesheets/application.css"
      end
      
    end
  end
end