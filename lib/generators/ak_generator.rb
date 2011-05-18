module Rails
  class AkGenerator < Rails::Generators::Base
		source_root File.expand_path("../templates", __FILE__)
		class_option :color, :type => :string
		
		def create_stylesheets
			template "ak-stylesheet.css", "public/stylesheets/ak-stylesheet.css"
			puts "Stylesheet created!"
		end
		
		def add_fontsize
      append_file "public/stylesheets/ak-stylesheet.css", "p {color: #{options.color};}"
      puts "Color defined!"
	  end
  end
end