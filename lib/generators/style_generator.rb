module Rails
  module Generators
    class StyleGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      argument :attributes, :type => :string, :default => "black", :banner => "color as string"
      
      def copy_stylesheet
        y "setting color of h1 to #{attributes}"
        css_file = "application.css"
        template css_file, "public/stylesheets/#{css_file}"
        copy_file "application.html.erb", "app/views/layouts/static.html.erb"
      end
      
    end
  end
end