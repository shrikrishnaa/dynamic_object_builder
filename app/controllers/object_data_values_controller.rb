class ObjectDataValuesController < ApplicationController
  def index
  	object_data = ObjectDatum.all
  end

  def get_object_datum_values
  	object_data = ObjectDatum.find(params[:id])
  	object_datum_values = object_data&.object_data_values
  	render json: object_datum_values
  end

  def get_data_value
  	object_data_value = ObjectDataValue.find(params[:id])
  	render json: object_data_value
  end

  def create
  	object_data = ObjectDatum.find_or_create_by(name: params[:name])
  	object_data_value = ObjectDataValue.new(value: params[:value],object_datum_id: object_data.id)
  	if object_data_value.save
  		render json: object_data_value
  	else
  		render json: @object_type.errors, status: :unprocessable_entity
  	end
  end

end
