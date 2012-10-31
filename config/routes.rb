Eightbitbeer::Application.routes.draw do

  devise_for  :users,
              :admins
              
  resources :ingredients,
            :steps,
            :log_entries,
            :batches,
            :recipes

  resource :styleguide
  root :to => 'home#index'



end
