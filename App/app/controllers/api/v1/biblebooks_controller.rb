class Api::V1::BiblebooksController < ApplicationController
  respond_to :json

  def index
    respond_with Biblebook.all
  end

  private

  def biblebook_params
    params.require(:biblebook).permit(:id, :name, :body)
  end
end
