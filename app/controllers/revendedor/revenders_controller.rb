class Revendedor::RevendersController < Revendedor::RevendedorController

  before_filter :auth_tipo

  def auth_tipo
    if current_client.tipo != "Revendedor"
      redirect_to  root_path
      flash[:notice] = 'Desculpe vc nao tem permiçao para ser Revendedor'
    end

  end
  # GET /revenders
  # GET /revenders.xml
  def index
    #@revenders = Revender.all
    @revenders = Revender.find([client_id = current_client.id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @revenders }
    end
  end

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

  # GET /revenders/1/edit
  def edit
    @revender = Revender.find(params[:id])
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

  # PUT /revenders/1
  # PUT /revenders/1.xml
  def update
    @revender = Revender.find(params[:id])

    respond_to do |format|
      if @revender.update_attributes(params[:revender])
        format.html { redirect_to(@revender, :notice => 'Revender was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @revender.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /revenders/1
  # DELETE /revenders/1.xml
  def destroy
    @revender = Revender.find(params[:id])
    @revender.destroy

    respond_to do |format|
      format.html { redirect_to(revenders_url) }
      format.xml  { head :ok }
    end
  end
end

