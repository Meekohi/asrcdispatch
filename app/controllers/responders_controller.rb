class RespondersController < ApplicationController
  # GET /responders
  # GET /responders.json
  def index
    @responders = Responder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @responders }
    end
  end

  # GET /responders/1
  # GET /responders/1.json
  def show
    @responder = Responder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @responder }
    end
  end

  # GET /responders/new
  # GET /responders/new.json
  def new
    @responder = Responder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @responder }
    end
  end

  # GET /responders/1/edit
  def edit
    @responder = Responder.find(params[:id])
  end

  # POST /responders
  # POST /responders.json
  def create
    @responder = Responder.new(params[:responder])

    respond_to do |format|
      if @responder.save
        format.html { redirect_to @responder, :notice => 'Responder was successfully created.' }
        format.json { render :json => @responder, :status => :created, :location => @responder }
      else
        format.html { render :action => "new" }
        format.json { render :json => @responder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /responders/1
  # PUT /responders/1.json
  def update
    @responder = Responder.find(params[:id])

    respond_to do |format|
      if @responder.update_attributes(params[:responder])
        format.html { redirect_to @responder, :notice => 'Responder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @responder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /responders/1
  # DELETE /responders/1.json
  def destroy
    @responder = Responder.find(params[:id])
    @responder.destroy

    respond_to do |format|
      format.html { redirect_to responders_url }
      format.json { head :no_content }
    end
  end
end
