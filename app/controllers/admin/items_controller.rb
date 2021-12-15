class Admin::ItemsController < ApplicationController

  def new
    @item = Item.new
    @genres = Genre.all
  end

  def index
    @items = Item.all
    # @genres = Genre.all
  end

  def show
    @items = Item.all
    @item = Item.find(params[:id])
    # @newitem = Item.new
  end

  def create

    @item = Item.new(item_params)
    @item.save
    redirect_to admin_item_path(@item.id)
  end



  def edit
    @item = Item.find(params[:id])
  end

  def update
    @items = Item.all
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to admin_item_path(@item.id)
    # else
    # render :edit

    end
  end

   private
  def item_params
    params.require(:item).permit(:genre_id, :name, :image, :introduction, :price, :is_active)
  end

end
