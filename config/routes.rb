Rails.application.routes.draw do

get 'sessions/new'
    # For debug tails on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root :to => 'static_pages#home'

    get     '/help',    to: 'static_pages#help'
    get     '/about',   to: 'static_pages#about'
    get     '/contact', to: 'static_pages#contact'
    get     '/signup',  to: 'users#new'
    post    '/signup',  to: 'users#create'
    get     '/login',   to: 'sessions#new'
    post    '/login',   to: 'sessions#create'
    delete  '/logout',  to: 'sessions#destroy'

    resources :sportclubs do       
        resources :club_user_relations
    end
    resources :users do 
        resources :club_user_relations
        get :'user_mark_club'
    end
end
