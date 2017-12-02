Rails.application.routes.draw do

  resources :object_types
  resources :object_data_values do
  	member do
  		get :get_object_datum_values
  	end
  	collection do
  		get :get_data_value
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
