class BidsController < ApplicationController

  def create
    @items = items_path
    @bid = Bid.new(bid_params)
    if @bid.save
      redirect_to @items, notice: 'Your bid has been recorded!'
    else
      @item = @bid.item
      render "items/show"
    end
    end


    private
      def bid_params
        params.require(:bid).permit(:amount, :item_id)
      end
end

