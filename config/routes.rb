Eightbitbeer::Application.routes.draw do

  

  root :to => 'home#index'
  resource :styleguide
  resources :ingredients,
            :steps,
            :log_entries,
            :batches,
            :recipes



end
