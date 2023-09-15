class CollectionsController < ApplicationController
  def index
    @collections = CollectionFacade.get_collections
  end

  def show
    @collection = CollectionFacade.get_single_collection(params[:id])
    @cards = CollectionFacade.get_single_collection(params[:id])
  end
end
