class HomeController < ApplicationController
  
  # GET /bars
  # GET /bars.json
  def index
    @bars = Bar.all(:order => 'displayorder') 

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bars }
    end
  end

end
