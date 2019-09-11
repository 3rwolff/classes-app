class GlossariesController < ApplicationController
  def index
    @items = GlossaryItem.all
  end

  def show
  end
end
