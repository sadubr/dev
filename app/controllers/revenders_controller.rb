class RevendersController < ApplicationController

  before_filter :load_resources

  # GET /revenders/1
  # GET /revenders/1.xml
  def show
    @revender = Revender.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @revender }
    end
  end

  # GET /revenders/new
  # GET /revenders/new.xml
  def new
    @revender = Revender.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @revender }
    end
  end



  # POST /revenders
  # POST /revenders.xml
  def create
    @revender = Revender.new(params[:revender])

    respond_to do |format|
      if @revender.save
        format.html { redirect_to(@revender, :notice => 'Revender was successfully created.') }
        format.xml  { render :xml => @revender, :status => :created, :location => @revender }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @revender.errors, :status => :unprocessable_entity }
      end
    end
  end

protected
  def load_resources
    @clients = Client.all
  end


end

