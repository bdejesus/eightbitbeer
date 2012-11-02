Eightbitbeer::Application.routes.draw do

  devise_for  :brewers, :path_names => { :sign_in => 'login', :sign_out => 'logout'}
              
  resources :ingredients,
            :steps,
            :log_entries,
            :batches,
            :recipes

  resource :styleguide
  root :to => 'home#index'

end
