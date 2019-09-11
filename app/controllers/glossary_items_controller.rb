class GlossaryItemsController < ApplicationController
  before_action :get_item

  def edit
  end

  def update
    @item.update_attributes(item_params)
    puts '#############'
    puts glossaries_path
    puts '############'
    redirect_to glossaries_path
  end

  def destroy
  end

  private

    def get_item
      @item = GlossaryItem.find(params[:id])
    end

    def item_params
      params.require(:glossary_item).permit(:title, :definition, :glossary_category_id)
    end
end
