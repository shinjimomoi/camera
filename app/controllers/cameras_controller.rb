class CamerasController < ApplicationController
    # GET /cameras
    def index
      @cameras = Camera.all
    end

    # GET /cameras/:id
    def show
      @camera = Camera.find(params[:id])
    end

    # GET /cameras/new
    def new
      @camera = Camera.new
    end

    # POST /cameras
    def create

      @user = User.find(params[:user_id])
      @camera = @user.cameras.build(camera_params)
      if @camera.save
        puts "coming here"
        redirect_to @camera, notice: 'Camera was successfully created.'
      else
        flash.now[:alert] = 'There was an error creating the camera.'
        render :new, alert: 'There was an error.'
      end
    end

    # GET /cameras/:id/edit
    def edit
      @camera = Camera.find(params[:id])
    end

    # PATCH/PUT /cameras/:id
    def update
      @camera = Camera.find(params[:id])
      if @camera.update(camera_params)
        redirect_to @camera, notice: 'Camera was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /cameras/:id
    def destroy
      @camera = Camera.find(params[:id])
      @camera.destroy
      redirect_to cameras_url, notice: 'Camera was successfully destroyed.'
    end

    private

    def camera_params
      params.require(:camera).permit(:model, :year, :price, :condition)
    end
  end
