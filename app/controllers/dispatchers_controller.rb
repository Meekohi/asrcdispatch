class DispatchersController < ApplicationController  
  # GET /dispatchers
  # GET /dispatchers.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @dispatchers }
    end
  end

  # GET /dispatchers/1
  # GET /dispatchers/1.json
  def show
    @dispatcher = Dispatcher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @dispatcher }
    end
  end

  # GET /dispatchers/new
  # GET /dispatchers/new.json
  def new
    @group = Group.find(params[:group_id])
    @dispatcher = Dispatcher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @dispatcher }
    end
  end

  # GET /dispatchers/1/edit
  def edit
    @dispatcher = Dispatcher.find(params[:id])
  end

  # POST /dispatchers
  # POST /dispatchers.json
  def create
    @group = Group.find(params[:group_id])
    @dispatcher = Dispatcher.new(params[:dispatcher])
    @group.dispatcher = @dispatcher
    
    respond_to do |format|
      if @dispatcher.save
        format.html { redirect_to :root }
        format.json { render :json => @dispatcher, :status => :created, :location => @dispatcher }
      else
        format.html { render :action => "new" }
        format.json { render :json => @dispatcher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dispatchers/1
  # PUT /dispatchers/1.json
  def update
    @dispatcher = Dispatcher.find(params[:id])

    respond_to do |format|
      if @dispatcher.update_attributes(params[:dispatcher])
        format.html { redirect_to @dispatcher, :notice => 'Dispatcher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @dispatcher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dispatchers/1
  # DELETE /dispatchers/1.json
  def destroy
    @dispatcher = Dispatcher.find(params[:id])
    @dispatcher.destroy

    respond_to do |format|
      format.html { redirect_to dispatchers_url }
      format.json { head :no_content }
    end
  end
end
