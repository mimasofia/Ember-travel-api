class ItemsController < ProtectedController
  before_action :set_place_id, only: [:show, :update, :destroy]

  # GET /items
  def index
    @items = current_user.items.all

    render json: @items
  end

  # GET /items/1
  def show
    @item = current_user.places.find(@place).items.find(params[:id])

    render json: @item
  end

  # POST /items
  def create
    # @item = current_user.items.build(item_params)
    @item = current_user.places.find(item_params[:place_id]).items.build(item_params)
    @item.user_id = current_user.id

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    @item = current_user.places.find(@place).items.find(params[:id])
    @item.place_id = current_user.places.find(item_params[:place_id]).id

    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item = current_user.places.find(@place).items.find(params[:id])

    @item.destroy
  end

  # private
    # Use callbacks to share common setup or constraints between actions.

    def set_item
      @item = current_user.items.find(params[:id])
    end

    def set_place_id
      @place = current_user.items.find(params[:id])[:place_id]
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:item_name, :place_id)
    end
  private :set_place_id, :item_params
end
