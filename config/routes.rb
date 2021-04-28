Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      # get 'users', to: 'users#index'
      # get 'users/create', to: 'users#create'
      resources :sessions
      resources :users 
      resources :movie_series do
        resources :characters
      end
    end
  end
end
