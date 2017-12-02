class ObjectTypesController < ApplicationController
  def index
    @object_types = ObjectType.all
    render json: @object_types
  end

  def new
    @object_type = ObjectType.new
  end

  def create
    @object_type = ObjectType.new(object_type_params)
    @object_type.specification = params["object_type"]["specification"]
    if @object_type.save
      render json: @object_type
    else
      render json: @object_type.errors, status: :unprocessable_entity
    end
  end

  def show
    @object_type = ObjectType.find(params[:id])
    render json: @object_type
  end

  def destroy
  end

  def edit
  end

  private
  def object_type_params
    params.fetch(:object_type).permit(:name,:icon)
  end
end
