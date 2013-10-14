class Api::V1::BiblebooksController < ApplicationController
  respond_to :json

  def index
    respond_with Biblebook.all
  end

  def show
    respond_with Biblebook.find(params[:id])
  end

  # def update
  #   biblebook = Biblebook.find(params[:id])
  #   biblebook.name = params[:biblebook][:name]
  #   biblebook.body = params[:biblebook][:body]
  #   # biblebook.image = params[:biblebook][:image] if params[:biblebook][:image].present?
  #   biblebook.save!
  #   render :json => Api::V1.new(biblebook), :status => :accepted
  #   redirect_to "/#/biblebooks"
  # end

  def update
    respond_with Biblebook.update(params[:id], params[:biblebook])
  end

  private

  def biblebook_params
    params.require(:biblebook).permit(:name, :body)
  end
end
