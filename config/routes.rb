Eightbitbeer::Application.routes.draw do

  devise_for  :brewers,
              :brewmeisters
              
  resources :ingredients,
            :steps,
            :log_entries,
            :batches,
            :recipes

  resource :styleguide
  root :to => 'home#index'

end
