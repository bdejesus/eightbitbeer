Eightbitbeer::Application.routes.draw do

  

  devise_for :users

  root :to => 'home#index'
  resource :styleguide
  resources :ingredients,
            :steps,
            :log_entries,
            :batches,
            :recipes



end
