ApnavirsaNet::Application.routes.draw do
   match '/signup' => "users#new", :as => "signup"
   match '/login' => "sessions#new", :as => "login"
   match '/logout' => "sessions#destroy", :as => "logout"
   match '/profile' => "users#show", :as => "profile"
   match '/popular' => "posts#popular", :as => "popular_posts"
   
   match '/about' => "home#about", :as => "about"
   match '/legal' => "home#legal", :as => "legal"

   resources :posts do
      resources :comments
   end
   
   resources :users
   resources :sessions
   resources :settings
   
   root :to => 'home#index'
end