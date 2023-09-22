class CollectionsController < ApplicationController
  def index
    @pagy, @collections =  pagy_array(CollectionFacade.get_collections, items: 200)
  end

  def show
    @collection = CollectionFacade.get_single_collection(params[:id])
  end
end
