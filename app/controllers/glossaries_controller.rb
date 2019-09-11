class GlossariesController < ApplicationController
  def index
    @items = GlossaryItem.all
  end

  def show
    @item = GlossaryItem(params[:id])
  end
end
