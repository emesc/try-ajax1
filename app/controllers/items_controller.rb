class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    @item = Item.new
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    if @item.save
      # flash[:notice] = "Item was successfully created."
      respond_to :html, :js
    else
      render 'new'
    end
  end

  def update
    @item.remote_file_url ||= @item.remote_file_url
    if @item.update_attributes(item_params)
      # flash[:notice] = "Item was successfully updated."
      respond_to :html, :js
    else
      render 'edit'
    end
  end

  def destroy
    @item.destroy
    # flash[:notice] = "Item successfully deleted."
    respond_to :html, :js
  end

  private

    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :description, :remote_file_url)
    end
end
