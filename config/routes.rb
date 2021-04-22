Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :movie_series do
        resources :characters
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
