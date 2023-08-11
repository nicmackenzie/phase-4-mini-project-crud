class SpicesController < ApplicationController
  def index
    render json: Spice.all
  end

  def create
    spice = Spice.create(spice_params)
    render json: spice, status: :created
  end

  def update
    spice = Spice.find_by(id:params[:id])
    if spice
      spice.update(spice_params)
      render json: spice
    else
      render json: {error: 'Could not find spice'}
    end
  end

  def destroy
    spice = Spice.find_by(id:params[:id])
    if spice
      spice.destroy
      head :no_content
    else
      render json: {error: 'Could not find spice'}
    end
  end

  private

  def spice_params
    params.permit(:title, :image, :description, :notes, :rating)
  end
end
