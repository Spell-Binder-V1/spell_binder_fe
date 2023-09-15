class CollectionsController < ApplicationController
  def index
    @collections = CollectionFacade.get_collections
  end

  def show
    @collection = CollectionFacade.get_single_collection(params[:id])
    @card = CollectionFacade.get_single_collection(params[:id])
  end
end
