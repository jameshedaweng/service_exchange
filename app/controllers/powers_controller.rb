class PowersController < ApplicationController
  load_and_authorize_resource
  before_action :set_power, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:like, :dislike]

  def index
    @powers = Power.accessible_by(current_ability)
  end

  def show    
  end

  def new
    @power = Power.new
  end

  def edit
  end

  def create
    @power = Power.new(power_params)
    @power.user = current_user

    respond_to do |format|
      if @power.save
        format.html { redirect_to @power, notice: 'Power was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @power.update(power_params)
        format.html { redirect_to @power, notice: 'Power was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @power.destroy
    respond_to do |format|
      format.html { redirect_to powers_url, notice: 'Power was successfully deleted.' }
    end
  end

  def manage_powers
    @powers = Power.accessible_by(current_ability, :manage)
  end

  def like    
    current_user.like!(@power)
    redirect_to @power
  end

  def dislike
    current_user.unlike!(@power)
    redirect_to @power
    #if true #request.xhr?
    #  url = view_context.link_to "Like", like_power_path(@power), id: :like_button      
    #  render json: { url: url }
    #else
    #  redirect_to @power
    #end
  end

  private
  def set_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:title, :description, :thumbnail)
  end
end
