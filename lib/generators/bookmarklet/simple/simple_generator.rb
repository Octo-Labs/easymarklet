module Bookmarklet
  class SimpleGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)
    
    def copy_js_file
      copy_file "simple_bookmarklet.js", "app/assets/javascripts/#{file_name}_bookmarklet.js"
    end

    def display_msg
      puts ""
      puts "You can link to your new bookmarklet with this :"
      puts ""
      puts "<%= link_to '#{file_name.titleize}', bookmarklet_js('#{file_name}_bookmarklet.js') %>"
      puts ""
    end

  end
end

