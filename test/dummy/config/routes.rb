Dummy::Application.routes.draw do

  resources :categories


  resources :categories
  resources :films

  match '/styleguide' => 'styleguide#index', :as => 'styleguide'
  match '/styleguide/:action' => 'styleguide'

  root :to => 'application#index'

end
