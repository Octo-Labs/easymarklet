class FvbDluxProducerController < ApplicationController

  layout 'fvb_dlux_producer'

  def index
  end

  def buffer
    render :text => "", :layout => "fvb_dlux_producer_buffer"
  end

end
