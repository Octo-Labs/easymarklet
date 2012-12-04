class <%= name.camelize %>ProducerController < ApplicationController

  layout '<%= name %>_producer'

  def index
  end

  def buffer
    render :text => "", :layout => "<%= name %>_producer_buffer"
  end

end
