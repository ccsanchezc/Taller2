Rails.application.routes.draw do
  resources :appoiments
  resources :consulting_rooms
  resources :consulting_types
  resources :doctors
  resources :professions do 
	resources :doctors
  end
  resources :patients
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
