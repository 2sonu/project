Rails.application.routes.draw do
   root "restaurants#index"

    resources :restaurants do
      resources :categories do
        resources :reviews
        
      end
    end
end    
