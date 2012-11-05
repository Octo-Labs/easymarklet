module Bookmarklet
  class XdmGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def copy_js_file
      template "xdm_bookmarklet.js", "app/assets/javascripts/#{file_name}_bookmarklet.js"
      template "xdm_consumer.js", "app/assets/javascripts/#{file_name}_consumer.js"
      template "xdm_producer.js", "app/assets/javascripts/#{file_name}_producer.js"
    end

    def display_msg
      puts ""
      puts "You can link to your new bookmarklet with this :"
      puts ""
      puts "<%= link_to '#{file_name.titleize}', bookmarklet_js('#{file_name}_consumer.js') %>"
      puts ""
    end

  end
end
