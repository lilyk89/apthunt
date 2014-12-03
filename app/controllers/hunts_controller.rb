class HuntsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :edit, :create, :update, :destroy]
  before_action :set_hunt, only: [:show, :edit, :update, :destroy, :add_user, :remove_user]

  # GET /hunts
  # GET /hunts.json
  def index
    if user_signed_in?
      @hunts = Hunt.all
    end
  end

  # GET /hunts/1
  # GET /hunts/1.json
  def show
  end

  # GET /hunts/new
  def new
    @hunt = Hunt.new
  end

  # GET /hunts/1/edit
  def edit
    if user_signed_in?
    end
  end

# PATCH/PUT /hunts/1/add_user
  def add_user
    new_user = User.where email: params[:q]
    if @hunt.users.include? new_user
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @hunt.errors, status: :unprocessable_entity }
      end
    else
      @hunt.users.push new_user
      respond_to do |format|
        if @hunt.save
          format.html { redirect_to @hunt, notice: 'Hunt was successfully updated.' }
          format.json { render :show, status: :ok, location: @hunt }
        else
          format.html { render :edit }
          format.json { render json: @hunt.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  #
  def remove_user
    user_to_remove = User.where email: params[:r]
    @hunt.users.delete(user_to_remove)
    respond_to do |format|
      if @hunt.save
        format.html { redirect_to @hunt, notice: 'Hunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @hunt }
      else
        format.html { render :edit }
        format.json { render json: @hunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /hunts
  # POST /hunts.json
  def create
    if user_signed_in?
    @hunt = Hunt.new(hunt_params)
    @hunt.users << @current_user
    else
    puts "Log in first"
      end

    respond_to do |format|
      if @hunt.save
        format.html { redirect_to @hunt, notice: 'Hunt was successfully created.' }
        format.json { render :show, status: :created, location: @hunt }
      else
        format.html { render :new }
        format.json { render json: @hunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hunts/1
  # PATCH/PUT /hunts/1.json
  def update
    respond_to do |format|
      if @hunt.update(hunt_params)
        format.html { redirect_to @hunt, notice: 'Hunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @hunt }
      else
        format.html { render :edit }
        format.json { render json: @hunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hunts/1
  # DELETE /hunts/1.json
  def destroy
    @hunt.destroy
    respond_to do |format|
      format.html { redirect_to hunts_url, notice: 'Hunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def hunt_params
      params.require(:hunt).permit(:name, :admin, :description, :users, :q,
        apt_attributes: [:id, :_destroy],
        user_attributes:[:id]) 
    end

    def set_hunt
      @hunt = Hunt.find(params[:id])
    end
end
