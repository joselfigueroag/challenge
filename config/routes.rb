Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get 'sessions/login', to: 'sessions#login'
      resources :users 
      resources :movie_series do
        resources :characters
      end
    end
  end
end
