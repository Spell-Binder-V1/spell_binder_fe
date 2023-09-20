class CollectionsController < ApplicationController
  def index
    @pagy, @collections = pagy_array(CollectionFacade.get_collections, item: 5)
    # @collections = pagy(CollectionFacade.get_collections)
  end

  def show
    @collection = CollectionFacade.get_single_collection(params[:id])
  end
end
