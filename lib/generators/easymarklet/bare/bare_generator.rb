module Easymarklet
  class BareGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)
    
    def copy_js_file
      template "bare_bookmarklet.js", "app/assets/javascripts/#{file_name}_bookmarklet.js"
    end

    def display_msg
      puts ""
      puts "You can link to your new bookmarklet with this :"
      puts ""
      puts "<%= link_to '#{file_name.titleize}', easymarklet_js('#{file_name}_bookmarklet.js') %>"
      puts ""
    end

  end
end

