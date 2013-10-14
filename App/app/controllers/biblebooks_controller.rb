class BiblebooksController < ApplicationController
  respond_to :json # default to Active Model Serializers

  def index
    respond_with Biblebook.all
  end

  def show
    respond_with Biblebook.find(params[:id])
  end

  def create
    respond_with Biblebook.create(biblebook_params)
  end

  def update
    respond_with Biblebook.update(params[:id], biblebook_params)
  end

  def destroy
    respond_with Biblebook.destroy(params[:id])
  end

  private
  def Biblebook_params
    params.require(:biblebook).permit(:name, :body) # only allow these for now
  end
end
