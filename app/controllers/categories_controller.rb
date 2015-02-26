class CategoriesController < ApplicationController
  load_and_authorize_resource
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @caregory = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to manage_categories_path, notice: 'Category was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to manage_categories_path, notice: 'Category was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @category.powers.each do |p|
      p.category = Category.find_by( name: "Default" )
      p.save
    end
    @category.destroy
    respond_to do |format|
      format.html { redirect_to manage_categories_path, notice: 'Category was successfully deleted.' }
    end
  end

  def manage_categories
    @categories = Category.all
    authorize! :manage, @category
  end

  def gallery
    @categories = Category.where.not( name: "Default" )
    render :layout => !request.xhr?
  end

  private
  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :theme_color, :glyph)
  end
end
