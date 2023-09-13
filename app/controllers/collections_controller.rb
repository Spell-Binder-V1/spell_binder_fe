class CollectionsController < ApplicationController
  def index
    @collections = CollectionFacade.get_collections
  end
end
