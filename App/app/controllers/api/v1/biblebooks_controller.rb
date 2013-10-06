class Api::V1::BiblebooksController < ApplicationController
  respond_to :json

  def index
    respond_with Biblebook.all
  end

  def show
    respond_with Biblebook.find(params[:id])
  end


  private

  def biblebook_params
    params.require(:biblebook).permit(:name, :body)
  end
end
