class CastlesController < ApplicationController
  def index
    @castles = Castle.all
    @user = current_user
  end

  def show
    @castle = Castle.find(params[:id])
  end

  def new
    @castle = Castle.new
  end

  def create
    @castle = Castle.new(castle_params)
    @castle.save
    redirect_to castle_url @castle

  end

  def edit
    @castle = Castle.find(params[:id])
  end

  def update
    @castle = Castle.find(params[:id])
    @castle.update(castle_params)
    redirect_to castle_url @castle
  end

  def destroy
    @castle = Castle.find(params[:id])
    @castle.destroy
    redirect_to castles_url
  end
  
  private
  def castle_params
    params.require(:castle).permit( :name, :content, :region, :prefectures, :lord, :construction_year, :image, :created_at, :updated_at, :prefectures_area, :region_area)
  end
end
